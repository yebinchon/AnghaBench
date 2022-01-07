; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_do_release_stripe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_do_release_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i64, %struct.TYPE_2__*, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.stripe_head = type { i64, i32, i32 }

@STRIPE_HANDLE = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4
@STRIPE_PREREAD_ACTIVE = common dso_local global i32 0, align 4
@STRIPE_BIT_DELAY = common dso_local global i32 0, align 4
@IO_THRESHOLD = common dso_local global i64 0, align 8
@STRIPE_EXPANDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*)* @do_release_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_release_stripe(%struct.r5conf* %0, %struct.stripe_head* %1) #0 {
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.stripe_head*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %4, align 8
  %5 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %6 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %5, i32 0, i32 1
  %7 = call i32 @list_empty(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %13 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %12, i32 0, i32 5
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* @STRIPE_HANDLE, align 4
  %19 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %20 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %19, i32 0, i32 2
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %90

23:                                               ; preds = %2
  %24 = load i32, i32* @STRIPE_DELAYED, align 4
  %25 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %26 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %25, i32 0, i32 2
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %31 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %32 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %31, i32 0, i32 2
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %37 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %36, i32 0, i32 1
  %38 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %39 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %38, i32 0, i32 10
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  %41 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %42 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %41, i32 0, i32 8
  %43 = call i32 @plugger_set_plug(i32* %42)
  br label %83

44:                                               ; preds = %29, %23
  %45 = load i32, i32* @STRIPE_BIT_DELAY, align 4
  %46 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %47 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %46, i32 0, i32 2
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %52 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %55 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %61 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %60, i32 0, i32 1
  %62 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %63 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %62, i32 0, i32 9
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  %65 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %66 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %65, i32 0, i32 8
  %67 = call i32 @plugger_set_plug(i32* %66)
  br label %82

68:                                               ; preds = %50, %44
  %69 = load i32, i32* @STRIPE_DELAYED, align 4
  %70 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %71 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %70, i32 0, i32 2
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  %73 = load i32, i32* @STRIPE_BIT_DELAY, align 4
  %74 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %75 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %74, i32 0, i32 2
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  %77 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %78 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %77, i32 0, i32 1
  %79 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %80 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %79, i32 0, i32 7
  %81 = call i32 @list_add_tail(i32* %78, i32* %80)
  br label %82

82:                                               ; preds = %68, %59
  br label %83

83:                                               ; preds = %82, %35
  %84 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %85 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @md_wakeup_thread(i32 %88)
  br label %144

90:                                               ; preds = %2
  %91 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %92 = call i32 @stripe_operations_active(%struct.stripe_head* %91)
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %95 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %96 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %95, i32 0, i32 2
  %97 = call i64 @test_and_clear_bit(i32 %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %90
  %100 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %101 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %100, i32 0, i32 6
  %102 = call i64 @atomic_dec_return(i32* %101)
  %103 = load i64, i64* @IO_THRESHOLD, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %107 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @md_wakeup_thread(i32 %110)
  br label %112

112:                                              ; preds = %105, %99
  br label %113

113:                                              ; preds = %112, %90
  %114 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %115 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %114, i32 0, i32 5
  %116 = call i32 @atomic_dec(i32* %115)
  %117 = load i32, i32* @STRIPE_EXPANDING, align 4
  %118 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %119 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %118, i32 0, i32 2
  %120 = call i64 @test_bit(i32 %117, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %143, label %122

122:                                              ; preds = %113
  %123 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %124 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %123, i32 0, i32 1
  %125 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %126 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %125, i32 0, i32 4
  %127 = call i32 @list_add_tail(i32* %124, i32* %126)
  %128 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %129 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %128, i32 0, i32 3
  %130 = call i32 @wake_up(i32* %129)
  %131 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %132 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %122
  %136 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %137 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @md_wakeup_thread(i32 %140)
  br label %142

142:                                              ; preds = %135, %122
  br label %143

143:                                              ; preds = %142, %113
  br label %144

144:                                              ; preds = %143, %83
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @plugger_set_plug(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @stripe_operations_active(%struct.stripe_head*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

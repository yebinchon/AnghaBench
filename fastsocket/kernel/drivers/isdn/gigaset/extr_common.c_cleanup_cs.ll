; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_cleanup_cs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_cleanup_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i32, i64, i32, i64, i32, i64, i64, i64, i64, i64, i64, i32*, %struct.cmdbuf_t*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.cmdbuf_t = type { %struct.cmdbuf_t* }
%struct.TYPE_2__ = type { i64, i64, i32, %struct.cmdbuf_t* }

@M_UNKNOWN = common dso_local global i32 0, align 4
@MS_UNINITIALIZED = common dso_local global i32 0, align 4
@INS_command = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate channel %d data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*)* @cleanup_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_cs(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.cmdbuf_t*, align 8
  %4 = alloca %struct.cmdbuf_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 6
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @M_UNKNOWN, align 4
  %12 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %13 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %12, i32 0, i32 18
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @MS_UNINITIALIZED, align 4
  %15 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %16 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %15, i32 0, i32 17
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %18 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %17, i32 0, i32 16
  %19 = call i32 @clear_at_state(i32* %18)
  %20 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %21 = call i32 @dealloc_at_states(%struct.cardstate* %20)
  %22 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %23 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %22, i32 0, i32 16
  %24 = call i32 @free_strings(i32* %23)
  %25 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %26 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %25, i32 0, i32 16
  %27 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %28 = call i32 @gigaset_at_init(i32* %26, i32* null, %struct.cardstate* %27, i32 0)
  %29 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %30 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %29, i32 0, i32 15
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %32, align 8
  %34 = call i32 @kfree(%struct.cmdbuf_t* %33)
  %35 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %36 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %35, i32 0, i32 15
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store %struct.cmdbuf_t* null, %struct.cmdbuf_t** %38, align 8
  %39 = load i32, i32* @INS_command, align 4
  %40 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %41 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %40, i32 0, i32 15
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %39, i32* %43, align 8
  %44 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %45 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %44, i32 0, i32 15
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %49 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %48, i32 0, i32 15
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %53 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %52, i32 0, i32 14
  %54 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %53, align 8
  store %struct.cmdbuf_t* %54, %struct.cmdbuf_t** %3, align 8
  br label %55

55:                                               ; preds = %58, %1
  %56 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %57 = icmp ne %struct.cmdbuf_t* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  store %struct.cmdbuf_t* %59, %struct.cmdbuf_t** %4, align 8
  %60 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %61 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %60, i32 0, i32 0
  %62 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %61, align 8
  store %struct.cmdbuf_t* %62, %struct.cmdbuf_t** %3, align 8
  %63 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %64 = call i32 @kfree(%struct.cmdbuf_t* %63)
  br label %55

65:                                               ; preds = %55
  %66 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %67 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %66, i32 0, i32 13
  store i32* null, i32** %67, align 8
  %68 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %69 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %68, i32 0, i32 14
  store %struct.cmdbuf_t* null, %struct.cmdbuf_t** %69, align 8
  %70 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %71 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %70, i32 0, i32 12
  store i64 0, i64* %71, align 8
  %72 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %73 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %72, i32 0, i32 11
  store i64 0, i64* %73, align 8
  %74 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %75 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %74, i32 0, i32 0
  store i32 -1, i32* %75, align 8
  %76 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %77 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %76, i32 0, i32 10
  store i64 0, i64* %77, align 8
  %78 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %79 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %78, i32 0, i32 9
  store i64 0, i64* %79, align 8
  %80 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %81 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %80, i32 0, i32 8
  store i64 0, i64* %81, align 8
  %82 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %83 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %82, i32 0, i32 7
  store i64 0, i64* %83, align 8
  %84 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %85 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %84, i32 0, i32 6
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %116, %65
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %91 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %88
  %95 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %96 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = call i32 @gigaset_freebcs(i64 %100)
  %102 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %103 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @gigaset_initbcs(i64 %107, %struct.cardstate* %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %94
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %112, %94
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %88

119:                                              ; preds = %88
  %120 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %121 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  %127 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %128 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %130 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  %131 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %132 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %131, i32 0, i32 2
  %133 = call i32 @wake_up_interruptible(i32* %132)
  br label %134

134:                                              ; preds = %124, %119
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_at_state(i32*) #1

declare dso_local i32 @dealloc_at_states(%struct.cardstate*) #1

declare dso_local i32 @free_strings(i32*) #1

declare dso_local i32 @gigaset_at_init(i32*, i32*, %struct.cardstate*, i32) #1

declare dso_local i32 @kfree(%struct.cmdbuf_t*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gigaset_freebcs(i64) #1

declare dso_local i32 @gigaset_initbcs(i64, %struct.cardstate*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

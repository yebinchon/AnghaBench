; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_sync_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_sync_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i32, i32, %struct.r5conf* }
%struct.r5conf = type { i32, i64, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.stripe_head = type { i32 }

@MD_RECOVERY_RESHAPE = common dso_local global i32 0, align 4
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@STRIPE_SYNC_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i64, i32*, i32)* @sync_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sync_request(%struct.mddev* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.r5conf*, align 8
  %11 = alloca %struct.stripe_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.mddev*, %struct.mddev** %6, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 5
  %19 = load %struct.r5conf*, %struct.r5conf** %18, align 8
  store %struct.r5conf* %19, %struct.r5conf** %10, align 8
  %20 = load %struct.mddev*, %struct.mddev** %6, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %4
  %27 = load %struct.mddev*, %struct.mddev** %6, align 8
  %28 = call i32 @unplug_slaves(%struct.mddev* %27)
  %29 = load i32, i32* @MD_RECOVERY_RESHAPE, align 4
  %30 = load %struct.mddev*, %struct.mddev** %6, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 4
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  %36 = call i32 @end_reshape(%struct.r5conf* %35)
  store i64 0, i64* %5, align 8
  br label %185

37:                                               ; preds = %26
  %38 = load %struct.mddev*, %struct.mddev** %6, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.mddev*, %struct.mddev** %6, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mddev*, %struct.mddev** %6, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @bitmap_end_sync(i32 %46, i64 %49, i64* %13, i32 1)
  br label %54

51:                                               ; preds = %37
  %52 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  %53 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %43
  %55 = load %struct.mddev*, %struct.mddev** %6, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @bitmap_close_sync(i32 %57)
  store i64 0, i64* %5, align 8
  br label %185

59:                                               ; preds = %4
  %60 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  %61 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  %64 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 2
  %67 = zext i1 %66 to i32
  %68 = call i32 @wait_event(i32 %62, i32 %67)
  %69 = load i32, i32* @MD_RECOVERY_RESHAPE, align 4
  %70 = load %struct.mddev*, %struct.mddev** %6, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 4
  %72 = call i64 @test_bit(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %59
  %75 = load %struct.mddev*, %struct.mddev** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i64 @reshape_request(%struct.mddev* %75, i64 %76, i32* %77)
  store i64 %78, i64* %5, align 8
  br label %185

79:                                               ; preds = %59
  %80 = load %struct.mddev*, %struct.mddev** %6, align 8
  %81 = getelementptr inbounds %struct.mddev, %struct.mddev* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  %84 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %82, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %79
  %88 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %89 = load %struct.mddev*, %struct.mddev** %6, align 8
  %90 = getelementptr inbounds %struct.mddev, %struct.mddev* %89, i32 0, i32 4
  %91 = call i64 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load %struct.mddev*, %struct.mddev** %6, align 8
  %95 = getelementptr inbounds %struct.mddev, %struct.mddev* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = sub nsw i64 %96, %97
  store i64 %98, i64* %16, align 8
  %99 = load i32*, i32** %8, align 8
  store i32 1, i32* %99, align 4
  %100 = load i64, i64* %16, align 8
  store i64 %100, i64* %5, align 8
  br label %185

101:                                              ; preds = %87, %79
  %102 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %103 = load %struct.mddev*, %struct.mddev** %6, align 8
  %104 = getelementptr inbounds %struct.mddev, %struct.mddev* %103, i32 0, i32 4
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %131, label %107

107:                                              ; preds = %101
  %108 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  %109 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %131, label %112

112:                                              ; preds = %107
  %113 = load %struct.mddev*, %struct.mddev** %6, align 8
  %114 = getelementptr inbounds %struct.mddev, %struct.mddev* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @bitmap_start_sync(i32 %115, i64 %116, i64* %13, i32 1)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %112
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* @STRIPE_SECTORS, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load i64, i64* @STRIPE_SECTORS, align 8
  %125 = load i64, i64* %13, align 8
  %126 = sdiv i64 %125, %124
  store i64 %126, i64* %13, align 8
  %127 = load i32*, i32** %8, align 8
  store i32 1, i32* %127, align 4
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* @STRIPE_SECTORS, align 8
  %130 = mul nsw i64 %128, %129
  store i64 %130, i64* %5, align 8
  br label %185

131:                                              ; preds = %119, %112, %107, %101
  %132 = load %struct.mddev*, %struct.mddev** %6, align 8
  %133 = getelementptr inbounds %struct.mddev, %struct.mddev* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @bitmap_cond_end_sync(i32 %134, i64 %135)
  %137 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  %138 = load i64, i64* %7, align 8
  %139 = call %struct.stripe_head* @get_active_stripe(%struct.r5conf* %137, i64 %138, i32 0, i32 1, i32 0)
  store %struct.stripe_head* %139, %struct.stripe_head** %11, align 8
  %140 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %141 = icmp eq %struct.stripe_head* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %131
  %143 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  %144 = load i64, i64* %7, align 8
  %145 = call %struct.stripe_head* @get_active_stripe(%struct.r5conf* %143, i64 %144, i32 0, i32 0, i32 0)
  store %struct.stripe_head* %145, %struct.stripe_head** %11, align 8
  %146 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %147

147:                                              ; preds = %142, %131
  store i32 0, i32* %15, align 4
  br label %148

148:                                              ; preds = %166, %147
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  %151 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %148
  %155 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  %156 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %155, i32 0, i32 3
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  store i32 1, i32* %14, align 4
  br label %165

165:                                              ; preds = %164, %154
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %148

169:                                              ; preds = %148
  %170 = load %struct.mddev*, %struct.mddev** %6, align 8
  %171 = getelementptr inbounds %struct.mddev, %struct.mddev* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i64, i64* %7, align 8
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @bitmap_start_sync(i32 %172, i64 %173, i64* %13, i32 %174)
  %176 = load i32, i32* @STRIPE_SYNC_REQUESTED, align 4
  %177 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %178 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %177, i32 0, i32 0
  %179 = call i32 @set_bit(i32 %176, i32* %178)
  %180 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %181 = call i32 @handle_stripe(%struct.stripe_head* %180)
  %182 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %183 = call i32 @release_stripe(%struct.stripe_head* %182)
  %184 = load i64, i64* @STRIPE_SECTORS, align 8
  store i64 %184, i64* %5, align 8
  br label %185

185:                                              ; preds = %169, %123, %93, %74, %54, %34
  %186 = load i64, i64* %5, align 8
  ret i64 %186
}

declare dso_local i32 @unplug_slaves(%struct.mddev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @end_reshape(%struct.r5conf*) #1

declare dso_local i32 @bitmap_end_sync(i32, i64, i64*, i32) #1

declare dso_local i32 @bitmap_close_sync(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @reshape_request(%struct.mddev*, i64, i32*) #1

declare dso_local i32 @bitmap_start_sync(i32, i64, i64*, i32) #1

declare dso_local i32 @bitmap_cond_end_sync(i32, i64) #1

declare dso_local %struct.stripe_head* @get_active_stripe(%struct.r5conf*, i64, i32, i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @handle_stripe(%struct.stripe_head*) #1

declare dso_local i32 @release_stripe(%struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

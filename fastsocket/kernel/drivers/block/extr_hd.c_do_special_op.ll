; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_do_special_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_do_special_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd_i_struct = type { i32, i64, i32, i64 }
%struct.request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATA_CMD_RESTORE = common dso_local global i32 0, align 4
@recal_intr = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%s: cannot handle device with more than 16 heads - giving up\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hd_i_struct*, %struct.request*)* @do_special_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_special_op(%struct.hd_i_struct* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hd_i_struct*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.hd_i_struct* %0, %struct.hd_i_struct** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %6 = load %struct.hd_i_struct*, %struct.hd_i_struct** %4, align 8
  %7 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.hd_i_struct*, %struct.hd_i_struct** %4, align 8
  %12 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.hd_i_struct*, %struct.hd_i_struct** %4, align 8
  %14 = load %struct.hd_i_struct*, %struct.hd_i_struct** %4, align 8
  %15 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ATA_CMD_RESTORE, align 4
  %18 = call i32 @hd_out(%struct.hd_i_struct* %13, i32 %16, i32 0, i32 0, i32 0, i32 %17, i32* @recal_intr)
  %19 = load i32, i32* @reset, align 4
  store i32 %19, i32* %3, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load %struct.hd_i_struct*, %struct.hd_i_struct** %4, align 8
  %22 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 16
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.request*, %struct.request** %5, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @hd_end_request_cur(i32 %33)
  br label %35

35:                                               ; preds = %25, %20
  %36 = load %struct.hd_i_struct*, %struct.hd_i_struct** %4, align 8
  %37 = getelementptr inbounds %struct.hd_i_struct, %struct.hd_i_struct* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @hd_out(%struct.hd_i_struct*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @hd_end_request_cur(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

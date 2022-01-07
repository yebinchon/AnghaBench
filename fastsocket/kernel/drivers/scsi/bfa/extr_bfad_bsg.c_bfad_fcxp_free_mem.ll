; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_fcxp_free_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_fcxp_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bfad_buf_info = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_fcxp_free_mem(%struct.bfad_s* %0, %struct.bfad_buf_info* %1, i32 %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca %struct.bfad_buf_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfad_buf_info*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store %struct.bfad_buf_info* %1, %struct.bfad_buf_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %5, align 8
  store %struct.bfad_buf_info* %9, %struct.bfad_buf_info** %8, align 8
  %10 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %5, align 8
  %11 = icmp ne %struct.bfad_buf_info* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %38, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %8, align 8
  %19 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %24 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %8, align 8
  %28 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %8, align 8
  %31 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %8, align 8
  %34 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dma_free_coherent(i32* %26, i32 %29, i32* %32, i32 %35)
  br label %37

37:                                               ; preds = %22, %17
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %8, align 8
  %40 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %39, i32 1
  store %struct.bfad_buf_info* %40, %struct.bfad_buf_info** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %5, align 8
  %45 = call i32 @kfree(%struct.bfad_buf_info* %44)
  br label %46

46:                                               ; preds = %43, %3
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.bfad_buf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

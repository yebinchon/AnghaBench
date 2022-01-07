; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_fcxp_map_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_fcxp_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_buf_info = type { i32, i64, i32 }
%struct.bfad_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_sge_s = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfad_buf_info* @bfad_fcxp_map_sg(%struct.bfad_s* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.bfad_buf_info*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bfad_buf_info*, align 8
  %11 = alloca %struct.bfad_buf_info*, align 8
  %12 = alloca %struct.bfa_sge_s*, align 8
  %13 = alloca i32, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 40, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.bfad_buf_info* @kzalloc(i32 %17, i32 %18)
  store %struct.bfad_buf_info* %19, %struct.bfad_buf_info** %10, align 8
  %20 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %10, align 8
  %21 = icmp ne %struct.bfad_buf_info* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store %struct.bfad_buf_info* null, %struct.bfad_buf_info** %5, align 8
  br label %86

23:                                               ; preds = %4
  %24 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %10, align 8
  %25 = bitcast %struct.bfad_buf_info* %24 to i32*
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 24, %27
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = bitcast i32* %29 to %struct.bfa_sge_s*
  store %struct.bfa_sge_s* %30, %struct.bfa_sge_s** %12, align 8
  %31 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %10, align 8
  store %struct.bfad_buf_info* %31, %struct.bfad_buf_info** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %34 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %36 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %40 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %43 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %42, i32 0, i32 1
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32 @dma_alloc_coherent(i32* %38, i32 %41, i64* %43, i32 %44)
  %46 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %47 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %49 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %23
  br label %83

53:                                               ; preds = %23
  %54 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %55 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %58 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memset(i32 %56, i32 0, i32 %59)
  %61 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %62 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %66 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @memcpy(i32 %63, i8* %64, i32 %67)
  %69 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %70 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.bfa_sge_s*, %struct.bfa_sge_s** %12, align 8
  %73 = getelementptr inbounds %struct.bfa_sge_s, %struct.bfa_sge_s* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %75 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.bfa_sge_s*, %struct.bfa_sge_s** %12, align 8
  %79 = getelementptr inbounds %struct.bfa_sge_s, %struct.bfa_sge_s* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %10, align 8
  store %struct.bfad_buf_info* %82, %struct.bfad_buf_info** %5, align 8
  br label %86

83:                                               ; preds = %52
  %84 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %10, align 8
  %85 = call i32 @kfree(%struct.bfad_buf_info* %84)
  store %struct.bfad_buf_info* null, %struct.bfad_buf_info** %5, align 8
  br label %86

86:                                               ; preds = %83, %53, %22
  %87 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %5, align 8
  ret %struct.bfad_buf_info* %87
}

declare dso_local %struct.bfad_buf_info* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.bfad_buf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

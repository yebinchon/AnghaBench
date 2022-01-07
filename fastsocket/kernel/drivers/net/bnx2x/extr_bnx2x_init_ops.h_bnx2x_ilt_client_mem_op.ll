; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_ilt_client_mem_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_ilt_client_mem_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_ilt = type { i32*, %struct.ilt_client_info* }
%struct.ilt_client_info = type { i32, i32, i32, i32 }

@ILT_CLIENT_SKIP_INIT = common dso_local global i32 0, align 4
@ILT_CLIENT_SKIP_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32)* @bnx2x_ilt_client_mem_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_ilt_client_mem_op(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnx2x_ilt*, align 8
  %11 = alloca %struct.ilt_client_info*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %13 = call %struct.bnx2x_ilt* @BP_ILT(%struct.bnx2x* %12)
  store %struct.bnx2x_ilt* %13, %struct.bnx2x_ilt** %10, align 8
  %14 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %10, align 8
  %15 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %14, i32 0, i32 1
  %16 = load %struct.ilt_client_info*, %struct.ilt_client_info** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %16, i64 %18
  store %struct.ilt_client_info* %19, %struct.ilt_client_info** %11, align 8
  %20 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %10, align 8
  %21 = icmp ne %struct.bnx2x_ilt* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %10, align 8
  %24 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %3
  store i32 -1, i32* %4, align 4
  br label %72

28:                                               ; preds = %22
  %29 = load %struct.ilt_client_info*, %struct.ilt_client_info** %11, align 8
  %30 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ILT_CLIENT_SKIP_INIT, align 4
  %33 = load i32, i32* @ILT_CLIENT_SKIP_MEM, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %72

38:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  %39 = load %struct.ilt_client_info*, %struct.ilt_client_info** %11, align 8
  %40 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %67, %38
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.ilt_client_info*, %struct.ilt_client_info** %11, align 8
  %45 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %48, %42
  %53 = phi i1 [ false, %42 ], [ %51, %48 ]
  br i1 %53, label %54, label %70

54:                                               ; preds = %52
  %55 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %56 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %10, align 8
  %57 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load %struct.ilt_client_info*, %struct.ilt_client_info** %11, align 8
  %63 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @bnx2x_ilt_line_mem_op(%struct.bnx2x* %55, i32* %61, i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %42

70:                                               ; preds = %52
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %37, %27
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.bnx2x_ilt* @BP_ILT(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_ilt_line_mem_op(%struct.bnx2x*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

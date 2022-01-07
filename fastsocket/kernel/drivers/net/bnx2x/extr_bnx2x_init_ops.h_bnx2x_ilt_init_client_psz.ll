; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_ilt_init_client_psz.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_ilt_init_client_psz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_ilt = type { %struct.ilt_client_info* }
%struct.ilt_client_info = type { i32, i32 }

@ILT_CLIENT_SKIP_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32, i32)* @bnx2x_ilt_init_client_psz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_ilt_init_client_psz(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x_ilt*, align 8
  %10 = alloca %struct.ilt_client_info*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %12 = call %struct.bnx2x_ilt* @BP_ILT(%struct.bnx2x* %11)
  store %struct.bnx2x_ilt* %12, %struct.bnx2x_ilt** %9, align 8
  %13 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %9, align 8
  %14 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %13, i32 0, i32 0
  %15 = load %struct.ilt_client_info*, %struct.ilt_client_info** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %15, i64 %17
  store %struct.ilt_client_info* %18, %struct.ilt_client_info** %10, align 8
  %19 = load %struct.ilt_client_info*, %struct.ilt_client_info** %10, align 8
  %20 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ILT_CLIENT_SKIP_INIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %38

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %38 [
    i32 129, label %28
    i32 128, label %28
    i32 130, label %37
  ]

28:                                               ; preds = %26, %26
  %29 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ilt_client_info*, %struct.ilt_client_info** %10, align 8
  %32 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 12
  %35 = call i32 @ILOG2(i32 %34)
  %36 = call i32 @REG_WR(%struct.bnx2x* %29, i32 %30, i32 %35)
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %25, %26, %37, %28
  ret void
}

declare dso_local %struct.bnx2x_ilt* @BP_ILT(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @ILOG2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

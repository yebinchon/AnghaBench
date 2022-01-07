; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_write_dmae.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_write_dmae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.dmae_command = type { i32, i32, i64, i32, i32 }

@wb_data = common dso_local global i32* null, align 8
@DMAE_SRC_PCI = common dso_local global i32 0, align 4
@DMAE_DST_GRC = common dso_local global i32 0, align 4
@wb_comp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DMAE returned failure %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_write_dmae(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dmae_command, align 8
  %11 = alloca i32*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %4
  %17 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %18 = load i32*, i32** @wb_data, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @bnx2x_sp(%struct.bnx2x* %17, i32 %20)
  store i32* %21, i32** %11, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %23 = call i64 @CHIP_IS_E1(%struct.bnx2x* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @bnx2x_init_ind_wr(%struct.bnx2x* %26, i32 %27, i32* %28, i32 %29)
  br label %37

31:                                               ; preds = %16
  %32 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @bnx2x_init_str_wr(%struct.bnx2x* %32, i32 %33, i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %25
  br label %66

38:                                               ; preds = %4
  %39 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %40 = load i32, i32* @DMAE_SRC_PCI, align 4
  %41 = load i32, i32* @DMAE_DST_GRC, align 4
  %42 = call i32 @bnx2x_prep_dmae_with_comp(%struct.bnx2x* %39, %struct.dmae_command* %10, i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @U64_LO(i32 %43)
  %45 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %10, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @U64_HI(i32 %46)
  %48 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %10, i32 0, i32 3
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 2
  %51 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %10, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %10, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %10, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %56 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %57 = load i32, i32* @wb_comp, align 4
  %58 = call i32* @bnx2x_sp(%struct.bnx2x* %56, i32 %57)
  %59 = call i32 @bnx2x_issue_dmae_with_comp(%struct.bnx2x* %55, %struct.dmae_command* %10, i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %38
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = call i32 (...) @bnx2x_panic()
  br label %66

66:                                               ; preds = %37, %62, %38
  ret void
}

declare dso_local i32* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_ind_wr(%struct.bnx2x*, i32, i32*, i32) #1

declare dso_local i32 @bnx2x_init_str_wr(%struct.bnx2x*, i32, i32*, i32) #1

declare dso_local i32 @bnx2x_prep_dmae_with_comp(%struct.bnx2x*, %struct.dmae_command*, i32, i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @bnx2x_issue_dmae_with_comp(%struct.bnx2x*, %struct.dmae_command*, i32*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @bnx2x_panic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

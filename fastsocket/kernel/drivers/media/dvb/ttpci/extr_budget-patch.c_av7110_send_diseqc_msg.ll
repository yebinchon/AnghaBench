; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-patch.c_av7110_send_diseqc_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-patch.c_av7110_send_diseqc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_patch = type { i32 }

@COMTYPE_AUDIODAC = common dso_local global i32 0, align 4
@SendDiSEqC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget_patch*, i32, i32*, i32)* @av7110_send_diseqc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av7110_send_diseqc_msg(%struct.budget_patch* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.budget_patch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [18 x i32], align 16
  store %struct.budget_patch* %0, %struct.budget_patch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = bitcast [18 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 72, i1 false)
  %12 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 0
  %13 = load i32, i32* @COMTYPE_AUDIODAC, align 4
  %14 = shl i32 %13, 8
  %15 = load i32, i32* @SendDiSEqC, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 16, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load %struct.budget_patch*, %struct.budget_patch** %5, align 8
  %35 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.budget_patch* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 10
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  store i32 10, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 2
  %42 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 2
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 3
  store i32 %51, i32* %52, align 4
  br label %55

53:                                               ; preds = %39
  %54 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 3
  store i32 65535, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %47
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %56

73:                                               ; preds = %56
  %74 = load %struct.budget_patch*, %struct.budget_patch** %5, align 8
  %75 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 0
  %76 = call i32 @budget_av7110_send_fw_cmd(%struct.budget_patch* %74, i32* %75, i32 18)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dprintk(i32, i8*, %struct.budget_patch*) #2

declare dso_local i32 @budget_av7110_send_fw_cmd(%struct.budget_patch*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_setup_iom2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_setup_iom2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, %struct.TYPE_4__, i64, %struct.IsdnCardState* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.IsdnCardState = type { i32 }

@IOM_CTRL_ENA = common dso_local global i32 0, align 4
@IOM_P1_TXD = common dso_local global i32 0, align 4
@IOM_CTRL_ALAW = common dso_local global i32 0, align 4
@IOM_CTRL_RCV = common dso_local global i32 0, align 4
@ISAR_HIS_IOM2CFG = common dso_local global i32 0, align 4
@ISAR_HIS_IOM2REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @setup_iom2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_iom2(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %7 = load %struct.BCState*, %struct.BCState** %2, align 8
  %8 = getelementptr inbounds %struct.BCState, %struct.BCState* %7, i32 0, i32 3
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %8, align 8
  store %struct.IsdnCardState* %9, %struct.IsdnCardState** %3, align 8
  %10 = load %struct.BCState*, %struct.BCState** %2, align 8
  %11 = getelementptr inbounds %struct.BCState, %struct.BCState* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SET_DPS(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @IOM_CTRL_ENA, align 4
  store i32 %16, i32* %5, align 4
  %17 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 20, i1 false)
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* @IOM_P1_TXD, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load %struct.BCState*, %struct.BCState** %2, align 8
  %25 = getelementptr inbounds %struct.BCState, %struct.BCState* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.BCState*, %struct.BCState** %2, align 8
  %33 = getelementptr inbounds %struct.BCState, %struct.BCState* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %51 [
    i32 130, label %35
    i32 129, label %44
    i32 131, label %44
    i32 128, label %45
    i32 132, label %45
  ]

35:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  %36 = load %struct.BCState*, %struct.BCState** %2, align 8
  %37 = getelementptr inbounds %struct.BCState, %struct.BCState* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 2
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 %41, i32* %43, align 4
  br label %51

44:                                               ; preds = %31, %31
  br label %51

45:                                               ; preds = %31, %31
  %46 = load i32, i32* @IOM_CTRL_ALAW, align 4
  %47 = load i32, i32* @IOM_CTRL_RCV, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %31, %45, %44, %35
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @ISAR_HIS_IOM2CFG, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %58 = call i32 @sendmsg(%struct.IsdnCardState* %52, i32 %55, i32 %56, i32 5, i32* %57)
  %59 = call i32 @udelay(i32 1000)
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @ISAR_HIS_IOM2REQ, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @sendmsg(%struct.IsdnCardState* %60, i32 %63, i32 0, i32 0, i32* null)
  %65 = call i32 @udelay(i32 1000)
  ret void
}

declare dso_local i32 @SET_DPS(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sendmsg(%struct.IsdnCardState*, i32, i32, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

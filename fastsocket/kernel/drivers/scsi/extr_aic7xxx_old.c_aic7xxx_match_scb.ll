; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_match_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_match_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }
%struct.aic7xxx_scb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8 }

@ALL_CHANNELS = common dso_local global i32 0, align 4
@ALL_TARGETS = common dso_local global i32 0, align 4
@ALL_LUNS = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aic7xxx_host*, %struct.aic7xxx_scb*, i32, i32, i32, i8)* @aic7xxx_match_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic7xxx_match_scb(%struct.aic7xxx_host* %0, %struct.aic7xxx_scb* %1, i32 %2, i32 %3, i32 %4, i8 zeroext %5) #0 {
  %7 = alloca %struct.aic7xxx_host*, align 8
  %8 = alloca %struct.aic7xxx_scb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %7, align 8
  store %struct.aic7xxx_scb* %1, %struct.aic7xxx_scb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8 %5, i8* %12, align 1
  %17 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %8, align 8
  %18 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %13, align 4
  %24 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %8, align 8
  %25 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 3
  %30 = and i32 %29, 1
  store i32 %30, i32* %14, align 4
  %31 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %8, align 8
  %32 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 7
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %6
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @ALL_CHANNELS, align 4
  %43 = icmp eq i32 %41, %42
  br label %44

44:                                               ; preds = %40, %6
  %45 = phi i1 [ true, %6 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @ALL_TARGETS, align 4
  %56 = icmp eq i32 %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ true, %49 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %57, %44
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @ALL_LUNS, align 4
  %70 = icmp eq i32 %68, %69
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i1 [ true, %63 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %71, %60
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load i8, i8* %12, align 1
  %79 = zext i8 %78 to i32
  %80 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %8, align 8
  %81 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i8, i8* %83, align 4
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %79, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %77
  %88 = load i8, i8* %12, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @SCB_LIST_NULL, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br label %93

93:                                               ; preds = %87, %77
  %94 = phi i1 [ true, %77 ], [ %92, %87 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %93, %74
  %97 = load i32, i32* %16, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

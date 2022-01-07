; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_rx_err_acct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_rx_err_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"%s: rx err, slot %d status 0x%x len %d\0A\00", align 1
@RxErrFrame = common dso_local global i32 0, align 4
@RxErrCRC = common dso_local global i32 0, align 4
@RxErrRunt = common dso_local global i32 0, align 4
@RxErrLong = common dso_local global i32 0, align 4
@FirstFrag = common dso_local global i32 0, align 4
@LastFrag = common dso_local global i32 0, align 4
@RxErrFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_private*, i32, i32, i32)* @cp_rx_err_acct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_rx_err_acct(%struct.cp_private* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cp_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cp_private* %0, %struct.cp_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.cp_private*, %struct.cp_private** %5, align 8
  %10 = call i64 @netif_msg_rx_err(%struct.cp_private* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = load %struct.cp_private*, %struct.cp_private** %5, align 8
  %14 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %12, %4
  %23 = load %struct.cp_private*, %struct.cp_private** %5, align 8
  %24 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @RxErrFrame, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.cp_private*, %struct.cp_private** %5, align 8
  %36 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %34, %22
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @RxErrCRC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.cp_private*, %struct.cp_private** %5, align 8
  %49 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %42
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @RxErrRunt, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @RxErrLong, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60, %55
  %66 = load %struct.cp_private*, %struct.cp_private** %5, align 8
  %67 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %65, %60
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @FirstFrag, align 4
  %76 = load i32, i32* @LastFrag, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = load i32, i32* @FirstFrag, align 4
  %80 = load i32, i32* @LastFrag, align 4
  %81 = or i32 %79, %80
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = load %struct.cp_private*, %struct.cp_private** %5, align 8
  %85 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %83, %73
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @RxErrFIFO, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.cp_private*, %struct.cp_private** %5, align 8
  %98 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %96, %91
  ret void
}

declare dso_local i64 @netif_msg_rx_err(%struct.cp_private*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

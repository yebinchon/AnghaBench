; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sworks-agp.c_serverworks_tlbflush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sworks-agp.c_serverworks_tlbflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.agp_memory = type { i32 }

@serverworks_private = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SVWRKS_POSTFLUSH = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"TLB post flush took more than 3 seconds\0A\00", align 1
@SVWRKS_DIRFLUSH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"TLB Dir flush took more than 3 seconds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_memory*)* @serverworks_tlbflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serverworks_tlbflush(%struct.agp_memory* %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  %3 = alloca i64, align 8
  store %struct.agp_memory* %0, %struct.agp_memory** %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serverworks_private, i32 0, i32 1), align 8
  %5 = load i64, i64* @SVWRKS_POSTFLUSH, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @writeb(i32 1, i64 %6)
  %8 = load i32, i32* @jiffies, align 4
  %9 = load i32, i32* @HZ, align 4
  %10 = mul nsw i32 3, %9
  %11 = add nsw i32 %8, %10
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serverworks_private, i32 0, i32 1), align 8
  %15 = load i64, i64* @SVWRKS_POSTFLUSH, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readb(i64 %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = call i32 (...) @cpu_relax()
  %21 = load i32, i32* @jiffies, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @time_after(i32 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serverworks_private, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %30

29:                                               ; preds = %19
  br label %13

30:                                               ; preds = %25, %13
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serverworks_private, i32 0, i32 1), align 8
  %32 = load i64, i64* @SVWRKS_DIRFLUSH, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 1, i64 %33)
  %35 = load i32, i32* @jiffies, align 4
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 3, %36
  %38 = add nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %56, %30
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serverworks_private, i32 0, i32 1), align 8
  %42 = load i64, i64* @SVWRKS_DIRFLUSH, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = call i32 (...) @cpu_relax()
  %48 = load i32, i32* @jiffies, align 4
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @time_after(i32 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serverworks_private, i32 0, i32 0), align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %57

56:                                               ; preds = %46
  br label %40

57:                                               ; preds = %52, %40
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

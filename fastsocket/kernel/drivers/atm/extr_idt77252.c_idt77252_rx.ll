; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.rsq_entry*, %struct.rsq_entry*, %struct.rsq_entry* }
%struct.rsq_entry = type { i64 }

@SAR_RSQE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: no entry in RSQ.\0A\00", align 1
@SAR_REG_RSQH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt77252_dev*)* @idt77252_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt77252_rx(%struct.idt77252_dev* %0) #0 {
  %2 = alloca %struct.idt77252_dev*, align 8
  %3 = alloca %struct.rsq_entry*, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %2, align 8
  %4 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %5 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.rsq_entry*, %struct.rsq_entry** %6, align 8
  %8 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %9 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load %struct.rsq_entry*, %struct.rsq_entry** %10, align 8
  %12 = icmp eq %struct.rsq_entry* %7, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %15 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.rsq_entry*, %struct.rsq_entry** %16, align 8
  store %struct.rsq_entry* %17, %struct.rsq_entry** %3, align 8
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %20 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.rsq_entry*, %struct.rsq_entry** %21, align 8
  %23 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %22, i64 1
  store %struct.rsq_entry* %23, %struct.rsq_entry** %3, align 8
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.rsq_entry*, %struct.rsq_entry** %3, align 8
  %26 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @le32_to_cpu(i64 %27)
  %29 = load i32, i32* @SAR_RSQE_VALID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %34 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @RXPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %91

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %69, %37
  %39 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %40 = load %struct.rsq_entry*, %struct.rsq_entry** %3, align 8
  %41 = call i32 @dequeue_rx(%struct.idt77252_dev* %39, %struct.rsq_entry* %40)
  %42 = load %struct.rsq_entry*, %struct.rsq_entry** %3, align 8
  %43 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.rsq_entry*, %struct.rsq_entry** %3, align 8
  %45 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %46 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.rsq_entry* %44, %struct.rsq_entry** %47, align 8
  %48 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %49 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.rsq_entry*, %struct.rsq_entry** %50, align 8
  %52 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %53 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load %struct.rsq_entry*, %struct.rsq_entry** %54, align 8
  %56 = icmp eq %struct.rsq_entry* %51, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %38
  %58 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %59 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.rsq_entry*, %struct.rsq_entry** %60, align 8
  store %struct.rsq_entry* %61, %struct.rsq_entry** %3, align 8
  br label %68

62:                                               ; preds = %38
  %63 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %64 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load %struct.rsq_entry*, %struct.rsq_entry** %65, align 8
  %67 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %66, i64 1
  store %struct.rsq_entry* %67, %struct.rsq_entry** %3, align 8
  br label %68

68:                                               ; preds = %62, %57
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.rsq_entry*, %struct.rsq_entry** %3, align 8
  %71 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @le32_to_cpu(i64 %72)
  %74 = load i32, i32* @SAR_RSQE_VALID, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %38, label %77

77:                                               ; preds = %69
  %78 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %79 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load %struct.rsq_entry*, %struct.rsq_entry** %80, align 8
  %82 = ptrtoint %struct.rsq_entry* %81 to i64
  %83 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %84 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load %struct.rsq_entry*, %struct.rsq_entry** %85, align 8
  %87 = ptrtoint %struct.rsq_entry* %86 to i64
  %88 = sub i64 %82, %87
  %89 = load i32, i32* @SAR_REG_RSQH, align 4
  %90 = call i32 @writel(i64 %88, i32 %89)
  br label %91

91:                                               ; preds = %77, %32
  ret void
}

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @RXPRINTK(i8*, i32) #1

declare dso_local i32 @dequeue_rx(%struct.idt77252_dev*, %struct.rsq_entry*) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

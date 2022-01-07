; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_free_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_free_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mthca_srq = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mthca_mailbox = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No memory for mailbox to free SRQ.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"HW2SW_SRQ failed (%d)\0A\00", align 1
@MTHCA_DB_TYPE_SRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_free_srq(%struct.mthca_dev* %0, %struct.mthca_srq* %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_srq*, align 8
  %5 = alloca %struct.mthca_mailbox*, align 8
  %6 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store %struct.mthca_srq* %1, %struct.mthca_srq** %4, align 8
  %7 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %7, i32 %8)
  store %struct.mthca_mailbox* %9, %struct.mthca_mailbox** %5, align 8
  %10 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %5, align 8
  %11 = call i64 @IS_ERR(%struct.mthca_mailbox* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %15 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %105

16:                                               ; preds = %2
  %17 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %18 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %5, align 8
  %19 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %20 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mthca_HW2SW_SRQ(%struct.mthca_dev* %17, %struct.mthca_mailbox* %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %16
  %30 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = call i32 @spin_lock_irq(i32* %32)
  %34 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %38 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %39, %44
  %46 = call i32 @mthca_array_clear(i32* %36, i32 %45)
  %47 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %48 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock_irq(i32* %53)
  %55 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %56 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %59 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %60 = call i32 @get_srq_refcount(%struct.mthca_dev* %58, %struct.mthca_srq* %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @wait_event(i32 %57, i32 %63)
  %65 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %66 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %29
  %71 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %72 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %73 = call i32 @mthca_free_srq_buf(%struct.mthca_dev* %71, %struct.mthca_srq* %72)
  %74 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %75 = call i64 @mthca_is_memfree(%struct.mthca_dev* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %79 = load i32, i32* @MTHCA_DB_TYPE_SRQ, align 4
  %80 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %81 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mthca_free_db(%struct.mthca_dev* %78, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %77, %70
  br label %85

85:                                               ; preds = %84, %29
  %86 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %87 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %88 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %92 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @mthca_table_put(%struct.mthca_dev* %86, i32 %90, i32 %93)
  %95 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %96 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %99 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @mthca_free(i32* %97, i32 %100)
  %102 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %103 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %5, align 8
  %104 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %102, %struct.mthca_mailbox* %103)
  br label %105

105:                                              ; preds = %85, %13
  ret void
}

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, ...) #1

declare dso_local i32 @mthca_HW2SW_SRQ(%struct.mthca_dev*, %struct.mthca_mailbox*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @mthca_array_clear(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @get_srq_refcount(%struct.mthca_dev*, %struct.mthca_srq*) #1

declare dso_local i32 @mthca_free_srq_buf(%struct.mthca_dev*, %struct.mthca_srq*) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_free_db(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_table_put(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_free(i32*, i32) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

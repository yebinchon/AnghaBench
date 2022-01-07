; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_commsup.c_aac_fib_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_commsup.c_aac_fib_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { i32, i32, %struct.hw_fib* }
%struct.hw_fib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@FIB_MAGIC = common dso_local global i64 0, align 8
@FIB_MAGIC2 = common dso_local global i64 0, align 8
@FIB_MAGIC2_64 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SentFromHost = common dso_local global i32 0, align 4
@AdapterProcessed = common dso_local global i32 0, align 4
@HostOwned = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_fib_complete(%struct.fib* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fib*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hw_fib*, align 8
  store %struct.fib* %0, %struct.fib** %3, align 8
  %6 = load %struct.fib*, %struct.fib** %3, align 8
  %7 = getelementptr inbounds %struct.fib, %struct.fib* %6, i32 0, i32 2
  %8 = load %struct.hw_fib*, %struct.hw_fib** %7, align 8
  store %struct.hw_fib* %8, %struct.hw_fib** %5, align 8
  %9 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %10 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

15:                                               ; preds = %1
  %16 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %17 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FIB_MAGIC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %24 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FIB_MAGIC2, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %31 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FIB_MAGIC2_64, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %107

39:                                               ; preds = %29, %22, %15
  %40 = load %struct.fib*, %struct.fib** %3, align 8
  %41 = getelementptr inbounds %struct.fib, %struct.fib* %40, i32 0, i32 1
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.fib*, %struct.fib** %3, align 8
  %45 = getelementptr inbounds %struct.fib, %struct.fib* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.fib*, %struct.fib** %3, align 8
  %50 = getelementptr inbounds %struct.fib, %struct.fib* %49, i32 0, i32 1
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  store i32 0, i32* %2, align 4
  br label %107

53:                                               ; preds = %39
  %54 = load %struct.fib*, %struct.fib** %3, align 8
  %55 = getelementptr inbounds %struct.fib, %struct.fib* %54, i32 0, i32 1
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %59 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SentFromHost, align 4
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %53
  %67 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %68 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AdapterProcessed, align 4
  %72 = call i32 @cpu_to_le32(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.fib*, %struct.fib** %3, align 8
  %77 = call i32 @fib_dealloc(%struct.fib* %76)
  br label %106

78:                                               ; preds = %66, %53
  %79 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %80 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SentFromHost, align 4
  %84 = call i32 @cpu_to_le32(i32 %83)
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load %struct.fib*, %struct.fib** %3, align 8
  %89 = call i32 @fib_dealloc(%struct.fib* %88)
  br label %105

90:                                               ; preds = %78
  %91 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %92 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @HostOwned, align 4
  %96 = call i32 @cpu_to_le32(i32 %95)
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load %struct.fib*, %struct.fib** %3, align 8
  %101 = call i32 @fib_dealloc(%struct.fib* %100)
  br label %104

102:                                              ; preds = %90
  %103 = call i32 (...) @BUG()
  br label %104

104:                                              ; preds = %102, %99
  br label %105

105:                                              ; preds = %104, %87
  br label %106

106:                                              ; preds = %105, %75
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %48, %36, %14
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @fib_dealloc(%struct.fib*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

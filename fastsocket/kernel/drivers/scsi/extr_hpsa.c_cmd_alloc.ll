; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_cmd_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_cmd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandList = type { i32, %struct.ctlr_info*, %struct.TYPE_6__, i64, i32, %struct.CommandList* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ctlr_info = type { i32, i64, %struct.CommandList*, i64, %struct.CommandList*, i32, i64 }
%union.u64bit = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.CommandList* (%struct.ctlr_info*)* @cmd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.CommandList* @cmd_alloc(%struct.ctlr_info* %0) #0 {
  %2 = alloca %struct.CommandList*, align 8
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.u64bit, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %11 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %10, i32 0, i32 5
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  br label %14

14:                                               ; preds = %33, %1
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %16 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %19 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @find_first_zero_bit(i64 %17, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %24 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %29 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %28, i32 0, i32 5
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  store %struct.CommandList* null, %struct.CommandList** %2, align 8
  br label %119

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @BITS_PER_LONG, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %34, %36
  %38 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %39 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @BITS_PER_LONG, align 4
  %43 = sdiv i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = call i64 @test_and_set_bit(i32 %37, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %14, label %48

48:                                               ; preds = %33
  %49 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %50 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %49, i32 0, i32 5
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %54 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %53, i32 0, i32 4
  %55 = load %struct.CommandList*, %struct.CommandList** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %55, i64 %57
  store %struct.CommandList* %58, %struct.CommandList** %4, align 8
  %59 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %60 = call i32 @memset(%struct.CommandList* %59, i32 0, i32 56)
  %61 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %62 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 56
  %67 = add i64 %63, %66
  store i64 %67, i64* %7, align 8
  %68 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %69 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %68, i32 0, i32 2
  %70 = load %struct.CommandList*, %struct.CommandList** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %70, i64 %72
  %74 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %75 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %74, i32 0, i32 5
  store %struct.CommandList* %73, %struct.CommandList** %75, align 8
  %76 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %77 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %76, i32 0, i32 5
  %78 = load %struct.CommandList*, %struct.CommandList** %77, align 8
  %79 = call i32 @memset(%struct.CommandList* %78, i32 0, i32 56)
  %80 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %81 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 56
  %86 = add i64 %82, %85
  store i64 %86, i64* %8, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %89 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %91 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %90, i32 0, i32 4
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %95 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %8, align 8
  %97 = bitcast %union.u64bit* %6 to i64*
  store i64 %96, i64* %97, align 8
  %98 = bitcast %union.u64bit* %6 to %struct.TYPE_5__*
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %102 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 %100, i32* %104, align 4
  %105 = bitcast %union.u64bit* %6 to %struct.TYPE_5__*
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %109 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 4
  %112 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %113 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i32 56, i32* %114, align 8
  %115 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %116 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %117 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %116, i32 0, i32 1
  store %struct.ctlr_info* %115, %struct.ctlr_info** %117, align 8
  %118 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  store %struct.CommandList* %118, %struct.CommandList** %2, align 8
  br label %119

119:                                              ; preds = %48, %27
  %120 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  ret %struct.CommandList* %120
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_first_zero_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @test_and_set_bit(i32, i64) #1

declare dso_local i32 @memset(%struct.CommandList*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

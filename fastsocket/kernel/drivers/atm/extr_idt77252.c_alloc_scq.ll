; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_alloc_scq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_alloc_scq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scq_info = type { i64, i32*, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.idt77252_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SCQ_SIZE = common dso_local global i32 0, align 4
@SCQ_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"idt77252: SCQ: base 0x%p, next 0x%p, last 0x%p, paddr %08llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scq_info* (%struct.idt77252_dev*, i32)* @alloc_scq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scq_info* @alloc_scq(%struct.idt77252_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.scq_info*, align 8
  %4 = alloca %struct.idt77252_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scq_info*, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.scq_info* @kzalloc(i32 56, i32 %7)
  store %struct.scq_info* %8, %struct.scq_info** %6, align 8
  %9 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %10 = icmp ne %struct.scq_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.scq_info* null, %struct.scq_info** %3, align 8
  br label %78

12:                                               ; preds = %2
  %13 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %14 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SCQ_SIZE, align 4
  %17 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %18 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %17, i32 0, i32 0
  %19 = call i32* @pci_alloc_consistent(i32 %15, i32 %16, i64* %18)
  %20 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %21 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %23 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %28 = call i32 @kfree(%struct.scq_info* %27)
  store %struct.scq_info* null, %struct.scq_info** %3, align 8
  br label %78

29:                                               ; preds = %12
  %30 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %31 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @SCQ_SIZE, align 4
  %34 = call i32 @memset(i32* %32, i32 0, i32 %33)
  %35 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %36 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %39 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %41 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @SCQ_ENTRIES, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %48 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %50 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %49, i32 0, i32 8
  %51 = call i32 @atomic_set(i32* %50, i32 0)
  %52 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %53 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %52, i32 0, i32 7
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %56 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %55, i32 0, i32 6
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %59 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %58, i32 0, i32 5
  %60 = call i32 @skb_queue_head_init(i32* %59)
  %61 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %62 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %61, i32 0, i32 4
  %63 = call i32 @skb_queue_head_init(i32* %62)
  %64 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %65 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %68 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %71 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  %74 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @TXPRINTK(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32* %66, i32* %69, i32* %72, i64 %75)
  %77 = load %struct.scq_info*, %struct.scq_info** %6, align 8
  store %struct.scq_info* %77, %struct.scq_info** %3, align 8
  br label %78

78:                                               ; preds = %29, %26, %11
  %79 = load %struct.scq_info*, %struct.scq_info** %3, align 8
  ret %struct.scq_info* %79
}

declare dso_local %struct.scq_info* @kzalloc(i32, i32) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @kfree(%struct.scq_info*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @TXPRINTK(i8*, i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_next_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_next_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, i64, i32, i32, %struct.TYPE_2__, %struct.reply_pool* }
%struct.TYPE_2__ = type { i32 (%struct.ctlr_info.0*, i64)* }
%struct.ctlr_info.0 = type opaque
%struct.reply_pool = type { i32*, i64, i32 }

@CFGTBL_Trans_Performant = common dso_local global i32 0, align 4
@FIFO_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i64)* @next_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_command(%struct.ctlr_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reply_pool*, align 8
  %8 = alloca i64, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %10 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %9, i32 0, i32 5
  %11 = load %struct.reply_pool*, %struct.reply_pool** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %11, i64 %12
  store %struct.reply_pool* %13, %struct.reply_pool** %7, align 8
  %14 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %15 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CFGTBL_Trans_Performant, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %26 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.ctlr_info.0*, i64)*, i32 (%struct.ctlr_info.0*, i64)** %27, align 8
  %29 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %30 = bitcast %struct.ctlr_info* %29 to %struct.ctlr_info.0*
  %31 = load i64, i64* %5, align 8
  %32 = call i32 %28(%struct.ctlr_info.0* %30, i64 %31)
  store i32 %32, i32* %3, align 4
  br label %91

33:                                               ; preds = %2
  %34 = load %struct.reply_pool*, %struct.reply_pool** %7, align 8
  %35 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.reply_pool*, %struct.reply_pool** %7, align 8
  %38 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1
  %43 = load %struct.reply_pool*, %struct.reply_pool** %7, align 8
  %44 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %33
  %48 = load %struct.reply_pool*, %struct.reply_pool** %7, align 8
  %49 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.reply_pool*, %struct.reply_pool** %7, align 8
  %52 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.reply_pool*, %struct.reply_pool** %7, align 8
  %57 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %61 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %60, i32 0, i32 2
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %65 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %69 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %68, i32 0, i32 2
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %74

72:                                               ; preds = %33
  %73 = load i32, i32* @FIFO_EMPTY, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %47
  %75 = load %struct.reply_pool*, %struct.reply_pool** %7, align 8
  %76 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %79 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load %struct.reply_pool*, %struct.reply_pool** %7, align 8
  %84 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.reply_pool*, %struct.reply_pool** %7, align 8
  %86 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = xor i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %82, %74
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %24
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_hw_ops.c_spu_hw_mbox_stat_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_hw_ops.c_spu_hw_mbox_stat_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.spu* }
%struct.spu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@CLASS2_MAILBOX_INTR = common dso_local global i32 0, align 4
@CLASS2_ENABLE_MAILBOX_INTR = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@CLASS2_MAILBOX_THRESHOLD_INTR = common dso_local global i32 0, align 4
@CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_context*, i32)* @spu_hw_mbox_stat_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_hw_mbox_stat_poll(%struct.spu_context* %0, i32 %1) #0 {
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %9 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %8, i32 0, i32 0
  %10 = load %struct.spu*, %struct.spu** %9, align 8
  store %struct.spu* %10, %struct.spu** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.spu*, %struct.spu** %5, align 8
  %12 = getelementptr inbounds %struct.spu, %struct.spu* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.spu*, %struct.spu** %5, align 8
  %15 = getelementptr inbounds %struct.spu, %struct.spu* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @in_be32(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @POLLIN, align 4
  %21 = load i32, i32* @POLLRDNORM, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 16711680
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @POLLIN, align 4
  %31 = load i32, i32* @POLLRDNORM, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %42

35:                                               ; preds = %25
  %36 = load %struct.spu*, %struct.spu** %5, align 8
  %37 = load i32, i32* @CLASS2_MAILBOX_INTR, align 4
  %38 = call i32 @spu_int_stat_clear(%struct.spu* %36, i32 2, i32 %37)
  %39 = load %struct.spu*, %struct.spu** %5, align 8
  %40 = load i32, i32* @CLASS2_ENABLE_MAILBOX_INTR, align 4
  %41 = call i32 @spu_int_mask_or(%struct.spu* %39, i32 2, i32 %40)
  br label %42

42:                                               ; preds = %35, %29
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @POLLOUT, align 4
  %46 = load i32, i32* @POLLWRNORM, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 65280
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @POLLOUT, align 4
  %56 = load i32, i32* @POLLWRNORM, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %6, align 4
  br label %65

58:                                               ; preds = %50
  %59 = load %struct.spu*, %struct.spu** %5, align 8
  %60 = load i32, i32* @CLASS2_MAILBOX_THRESHOLD_INTR, align 4
  %61 = call i32 @spu_int_stat_clear(%struct.spu* %59, i32 2, i32 %60)
  %62 = load %struct.spu*, %struct.spu** %5, align 8
  %63 = load i32, i32* @CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR, align 4
  %64 = call i32 @spu_int_mask_or(%struct.spu* %62, i32 2, i32 %63)
  br label %65

65:                                               ; preds = %58, %54
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.spu*, %struct.spu** %5, align 8
  %68 = getelementptr inbounds %struct.spu, %struct.spu* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @spu_int_stat_clear(%struct.spu*, i32, i32) #1

declare dso_local i32 @spu_int_mask_or(%struct.spu*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_sunkbd.c_sunkbd_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_sunkbd.c_sunkbd_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunkbd = type { i32, i32, i32, i32, i32 }

@SUNKBD_CMD_RESET = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SUNKBD_CMD_LAYOUT = common dso_local global i32 0, align 4
@SUNKBD_LAYOUT_5_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunkbd*)* @sunkbd_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunkbd_initialize(%struct.sunkbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sunkbd*, align 8
  store %struct.sunkbd* %0, %struct.sunkbd** %3, align 8
  %4 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %5 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %4, i32 0, i32 0
  store i32 -2, i32* %5, align 4
  %6 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %7 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SUNKBD_CMD_RESET, align 4
  %10 = call i32 @serio_write(i32 %8, i32 %9)
  %11 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %12 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %15 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @HZ, align 4
  %20 = call i32 @wait_event_interruptible_timeout(i32 %13, i32 %18, i32 %19)
  %21 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %22 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %72

26:                                               ; preds = %1
  %27 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %28 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %31 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %33 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %71

36:                                               ; preds = %26
  %37 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %38 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %37, i32 0, i32 2
  store i32 -2, i32* %38, align 4
  %39 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %40 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SUNKBD_CMD_LAYOUT, align 4
  %43 = call i32 @serio_write(i32 %41, i32 %42)
  %44 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %45 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %48 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @HZ, align 4
  %53 = sdiv i32 %52, 4
  %54 = call i32 @wait_event_interruptible_timeout(i32 %46, i32 %51, i32 %53)
  %55 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %56 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %72

60:                                               ; preds = %36
  %61 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %62 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SUNKBD_LAYOUT_5_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.sunkbd*, %struct.sunkbd** %3, align 8
  %69 = getelementptr inbounds %struct.sunkbd, %struct.sunkbd* %68, i32 0, i32 1
  store i32 5, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %60
  br label %71

71:                                               ; preds = %70, %26
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %59, %25
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @serio_write(i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

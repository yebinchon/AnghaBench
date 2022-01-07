; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/gameport/extr_lightning.c_l4_cooked_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/gameport/extr_lightning.c_l4_cooked_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { %struct.l4* }
%struct.l4 = type { i32 }

@L4_SELECT_ANALOG = common dso_local global i32 0, align 4
@L4_PORT = common dso_local global i32 0, align 4
@L4_SELECT_DIGITAL = common dso_local global i32 0, align 4
@L4_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, i32*, i32*)* @l4_cooked_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l4_cooked_read(%struct.gameport* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.l4*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.gameport*, %struct.gameport** %4, align 8
  %12 = getelementptr inbounds %struct.gameport, %struct.gameport* %11, i32 0, i32 0
  %13 = load %struct.l4*, %struct.l4** %12, align 8
  store %struct.l4* %13, %struct.l4** %7, align 8
  store i32 -1, i32* %10, align 4
  %14 = load i32, i32* @L4_SELECT_ANALOG, align 4
  %15 = load i32, i32* @L4_PORT, align 4
  %16 = call i32 @outb(i32 %14, i32 %15)
  %17 = load i32, i32* @L4_SELECT_DIGITAL, align 4
  %18 = load %struct.l4*, %struct.l4** %7, align 8
  %19 = getelementptr inbounds %struct.l4, %struct.l4* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 2
  %22 = add nsw i32 %17, %21
  %23 = load i32, i32* @L4_PORT, align 4
  %24 = call i32 @outb(i32 %22, i32 %23)
  %25 = load i32, i32* @L4_PORT, align 4
  %26 = call i32 @inb(i32 %25)
  %27 = load i32, i32* @L4_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %97

31:                                               ; preds = %3
  %32 = load %struct.l4*, %struct.l4** %7, align 8
  %33 = getelementptr inbounds %struct.l4, %struct.l4* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 3
  %36 = load i32, i32* @L4_PORT, align 4
  %37 = call i32 @outb(i32 %35, i32 %36)
  %38 = call i64 (...) @l4_wait_ready()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %97

41:                                               ; preds = %31
  %42 = load i32, i32* @L4_PORT, align 4
  %43 = call i32 @inb(i32 %42)
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %8, align 1
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %79, %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %48
  %56 = call i64 (...) @l4_wait_ready()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %97

59:                                               ; preds = %55
  %60 = load i32, i32* @L4_PORT, align 4
  %61 = call i32 @inb(i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 252
  br i1 %71, label %72, label %77

72:                                               ; preds = %59
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 -1, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %59
  br label %78

78:                                               ; preds = %77, %48
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %45

82:                                               ; preds = %45
  %83 = load i8, i8* %8, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 16
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = call i64 (...) @l4_wait_ready()
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %97

91:                                               ; preds = %87
  %92 = load i32, i32* @L4_PORT, align 4
  %93 = call i32 @inb(i32 %92)
  %94 = and i32 %93, 15
  %95 = load i32*, i32** %6, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %82
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %96, %90, %58, %40, %30
  %98 = load i32, i32* @L4_SELECT_ANALOG, align 4
  %99 = load i32, i32* @L4_PORT, align 4
  %100 = call i32 @outb(i32 %98, i32 %99)
  %101 = load i32, i32* %10, align 4
  ret i32 %101
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i64 @l4_wait_ready(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

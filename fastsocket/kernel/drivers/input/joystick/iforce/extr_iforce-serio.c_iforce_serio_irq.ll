; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-serio.c_iforce_serio_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-serio.c_iforce_serio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.iforce = type { i32, i8, i8, i32, i8*, i64 }

@IFORCE_MAX_LENGTH = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @iforce_serio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iforce_serio_irq(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.iforce*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = call %struct.iforce* @serio_get_drvdata(%struct.serio* %8)
  store %struct.iforce* %9, %struct.iforce** %7, align 8
  %10 = load %struct.iforce*, %struct.iforce** %7, align 8
  %11 = getelementptr inbounds %struct.iforce, %struct.iforce* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 43
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.iforce*, %struct.iforce** %7, align 8
  %20 = getelementptr inbounds %struct.iforce, %struct.iforce* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %14
  br label %124

22:                                               ; preds = %3
  %23 = load %struct.iforce*, %struct.iforce** %7, align 8
  %24 = getelementptr inbounds %struct.iforce, %struct.iforce* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 4
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %22
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 255
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.iforce*, %struct.iforce** %7, align 8
  %37 = getelementptr inbounds %struct.iforce, %struct.iforce* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %42

38:                                               ; preds = %31, %27
  %39 = load i8, i8* %5, align 1
  %40 = load %struct.iforce*, %struct.iforce** %7, align 8
  %41 = getelementptr inbounds %struct.iforce, %struct.iforce* %40, i32 0, i32 1
  store i8 %39, i8* %41, align 4
  br label %42

42:                                               ; preds = %38, %35
  br label %124

43:                                               ; preds = %22
  %44 = load %struct.iforce*, %struct.iforce** %7, align 8
  %45 = getelementptr inbounds %struct.iforce, %struct.iforce* %44, i32 0, i32 2
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %43
  %49 = load i8, i8* %5, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @IFORCE_MAX_LENGTH, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.iforce*, %struct.iforce** %7, align 8
  %56 = getelementptr inbounds %struct.iforce, %struct.iforce* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.iforce*, %struct.iforce** %7, align 8
  %58 = getelementptr inbounds %struct.iforce, %struct.iforce* %57, i32 0, i32 1
  store i8 0, i8* %58, align 4
  br label %63

59:                                               ; preds = %48
  %60 = load i8, i8* %5, align 1
  %61 = load %struct.iforce*, %struct.iforce** %7, align 8
  %62 = getelementptr inbounds %struct.iforce, %struct.iforce* %61, i32 0, i32 2
  store i8 %60, i8* %62, align 1
  br label %63

63:                                               ; preds = %59, %54
  br label %124

64:                                               ; preds = %43
  %65 = load %struct.iforce*, %struct.iforce** %7, align 8
  %66 = getelementptr inbounds %struct.iforce, %struct.iforce* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.iforce*, %struct.iforce** %7, align 8
  %69 = getelementptr inbounds %struct.iforce, %struct.iforce* %68, i32 0, i32 2
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %64
  %74 = load i8, i8* %5, align 1
  %75 = load %struct.iforce*, %struct.iforce** %7, align 8
  %76 = getelementptr inbounds %struct.iforce, %struct.iforce* %75, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.iforce*, %struct.iforce** %7, align 8
  %79 = getelementptr inbounds %struct.iforce, %struct.iforce* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %77, i64 %82
  store i8 %74, i8* %83, align 1
  %84 = zext i8 %74 to i64
  %85 = load %struct.iforce*, %struct.iforce** %7, align 8
  %86 = getelementptr inbounds %struct.iforce, %struct.iforce* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %124

89:                                               ; preds = %64
  %90 = load %struct.iforce*, %struct.iforce** %7, align 8
  %91 = getelementptr inbounds %struct.iforce, %struct.iforce* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.iforce*, %struct.iforce** %7, align 8
  %94 = getelementptr inbounds %struct.iforce, %struct.iforce* %93, i32 0, i32 2
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %92, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %89
  %99 = load %struct.iforce*, %struct.iforce** %7, align 8
  %100 = load %struct.iforce*, %struct.iforce** %7, align 8
  %101 = getelementptr inbounds %struct.iforce, %struct.iforce* %100, i32 0, i32 1
  %102 = load i8, i8* %101, align 4
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 8
  %105 = load %struct.iforce*, %struct.iforce** %7, align 8
  %106 = getelementptr inbounds %struct.iforce, %struct.iforce* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %104, %107
  %109 = load %struct.iforce*, %struct.iforce** %7, align 8
  %110 = getelementptr inbounds %struct.iforce, %struct.iforce* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @iforce_process_packet(%struct.iforce* %99, i32 %108, i8* %111)
  %113 = load %struct.iforce*, %struct.iforce** %7, align 8
  %114 = getelementptr inbounds %struct.iforce, %struct.iforce* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  %115 = load %struct.iforce*, %struct.iforce** %7, align 8
  %116 = getelementptr inbounds %struct.iforce, %struct.iforce* %115, i32 0, i32 1
  store i8 0, i8* %116, align 4
  %117 = load %struct.iforce*, %struct.iforce** %7, align 8
  %118 = getelementptr inbounds %struct.iforce, %struct.iforce* %117, i32 0, i32 2
  store i8 0, i8* %118, align 1
  %119 = load %struct.iforce*, %struct.iforce** %7, align 8
  %120 = getelementptr inbounds %struct.iforce, %struct.iforce* %119, i32 0, i32 3
  store i32 0, i32* %120, align 8
  %121 = load %struct.iforce*, %struct.iforce** %7, align 8
  %122 = getelementptr inbounds %struct.iforce, %struct.iforce* %121, i32 0, i32 5
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %98, %89
  br label %124

124:                                              ; preds = %123, %73, %63, %42, %21
  %125 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %125
}

declare dso_local %struct.iforce* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @iforce_process_packet(%struct.iforce*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

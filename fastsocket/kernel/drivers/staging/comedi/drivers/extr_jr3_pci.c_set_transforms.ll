; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_set_transforms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_set_transforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jr3_channel = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.transform_t = type { %struct.TYPE_6__* }

@end_x_form = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jr3_channel*, %struct.TYPE_6__*, i16)* @set_transforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_transforms(%struct.jr3_channel* %0, %struct.TYPE_6__* %1, i16 signext %2) #0 {
  %4 = alloca %struct.transform_t, align 8
  %5 = alloca %struct.jr3_channel*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.transform_t, %struct.transform_t* %4, i32 0, i32 0
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store %struct.jr3_channel* %0, %struct.jr3_channel** %5, align 8
  store i16 %2, i16* %6, align 2
  %9 = load i16, i16* %6, align 2
  %10 = sext i16 %9 to i32
  %11 = and i32 %10, 15
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %6, align 2
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %70, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %73

16:                                               ; preds = %13
  %17 = load %struct.jr3_channel*, %struct.jr3_channel** %5, align 8
  %18 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %17, i32 0, i32 0
  %19 = load volatile %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i16, i16* %6, align 2
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.transform_t, %struct.transform_t* %4, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @set_u16(i32* %28, i64 %35)
  %37 = call i32 @udelay(i32 1)
  %38 = load %struct.jr3_channel*, %struct.jr3_channel** %5, align 8
  %39 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %38, i32 0, i32 0
  %40 = load volatile %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i16, i16* %6, align 2
  %42 = sext i16 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.transform_t, %struct.transform_t* %4, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @set_s16(i32* %49, i32 %56)
  %58 = call i32 @udelay(i32 1)
  %59 = getelementptr inbounds %struct.transform_t, %struct.transform_t* %4, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @end_x_form, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %16
  br label %73

69:                                               ; preds = %16
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %13

73:                                               ; preds = %68, %13
  ret void
}

declare dso_local i32 @set_u16(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @set_s16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

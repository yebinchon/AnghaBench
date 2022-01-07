; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_bpck.c_bpck_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_bpck.c_bpck_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @bpck_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpck_read_eeprom(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = call i32 @bpck_force_spp(%struct.TYPE_6__* %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 6, i32* %25, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = call i32 @bpck_connect(%struct.TYPE_6__* %26)
  store i32 0, i32* %8, align 4
  %28 = call i32 @WR(i32 4, i32 0)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %97, %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 64
  br i1 %31, label %32, label %100

32:                                               ; preds = %29
  %33 = call i32 @WR(i32 6, i32 8)
  %34 = call i32 @WR(i32 6, i32 12)
  store i32 256, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %57, %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 9
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 384
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 12
  %48 = call i32 @WR(i32 6, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 13
  %51 = call i32 @WR(i32 6, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 12
  %54 = call i32 @WR(i32 6, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %35

60:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %93, %60
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %96

64:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = call i32 @WR(i32 6, i32 12)
  %70 = call i32 @WR(i32 6, i32 13)
  %71 = call i32 @WR(i32 6, i32 12)
  %72 = call i32 @RR(i32 0)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 2, %73
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 132
  %77 = zext i1 %76 to i32
  %78 = add nsw i32 %74, %77
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %65

82:                                               ; preds = %65
  %83 = load i32, i32* %10, align 4
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = mul nsw i32 2, %86
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %85, i64 %91
  store i8 %84, i8* %92, align 1
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %61

96:                                               ; preds = %61
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %29

100:                                              ; preds = %29
  %101 = call i32 @WR(i32 6, i32 8)
  %102 = call i32 @WR(i32 6, i32 0)
  %103 = call i32 @WR(i32 5, i32 8)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = call i32 @bpck_disconnect(%struct.TYPE_6__* %104)
  %106 = load i32, i32* %12, align 4
  %107 = icmp sge i32 %106, 2
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = call i32 @bpck_connect(%struct.TYPE_6__* %109)
  %111 = call i32 @WR(i32 7, i32 3)
  %112 = call i32 @WR(i32 4, i32 8)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = call i32 @bpck_disconnect(%struct.TYPE_6__* %113)
  br label %115

115:                                              ; preds = %108, %100
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  ret void
}

declare dso_local i32 @bpck_force_spp(%struct.TYPE_6__*) #1

declare dso_local i32 @bpck_connect(%struct.TYPE_6__*) #1

declare dso_local i32 @WR(i32, i32) #1

declare dso_local i32 @RR(i32) #1

declare dso_local i32 @bpck_disconnect(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

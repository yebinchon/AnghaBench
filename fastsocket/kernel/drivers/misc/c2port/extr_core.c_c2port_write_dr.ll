; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/c2port/extr_core.c_c2port_write_dr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/c2port/extr_core.c_c2port_write_dr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2port_device = type { %struct.c2port_ops* }
%struct.c2port_ops = type { i64 (%struct.c2port_device.0*)*, i32 (%struct.c2port_device.1*, i32)*, i32 (%struct.c2port_device.2*, i32)* }
%struct.c2port_device.0 = type opaque
%struct.c2port_device.1 = type opaque
%struct.c2port_device.2 = type opaque

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2port_device*, i32)* @c2port_write_dr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2port_write_dr(%struct.c2port_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c2port_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c2port_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.c2port_device* %0, %struct.c2port_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %10 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %9, i32 0, i32 0
  %11 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  store %struct.c2port_ops* %11, %struct.c2port_ops** %6, align 8
  %12 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %13 = call i32 @c2port_strobe_ck(%struct.c2port_device* %12)
  %14 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %15 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %14, i32 0, i32 1
  %16 = load i32 (%struct.c2port_device.1*, i32)*, i32 (%struct.c2port_device.1*, i32)** %15, align 8
  %17 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %18 = bitcast %struct.c2port_device* %17 to %struct.c2port_device.1*
  %19 = call i32 %16(%struct.c2port_device.1* %18, i32 0)
  %20 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %21 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %20, i32 0, i32 2
  %22 = load i32 (%struct.c2port_device.2*, i32)*, i32 (%struct.c2port_device.2*, i32)** %21, align 8
  %23 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %24 = bitcast %struct.c2port_device* %23 to %struct.c2port_device.2*
  %25 = call i32 %22(%struct.c2port_device.2* %24, i32 1)
  %26 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %27 = call i32 @c2port_strobe_ck(%struct.c2port_device* %26)
  %28 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %29 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %28, i32 0, i32 2
  %30 = load i32 (%struct.c2port_device.2*, i32)*, i32 (%struct.c2port_device.2*, i32)** %29, align 8
  %31 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %32 = bitcast %struct.c2port_device* %31 to %struct.c2port_device.2*
  %33 = call i32 %30(%struct.c2port_device.2* %32, i32 0)
  %34 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %35 = call i32 @c2port_strobe_ck(%struct.c2port_device* %34)
  %36 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %37 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %36, i32 0, i32 2
  %38 = load i32 (%struct.c2port_device.2*, i32)*, i32 (%struct.c2port_device.2*, i32)** %37, align 8
  %39 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %40 = bitcast %struct.c2port_device* %39 to %struct.c2port_device.2*
  %41 = call i32 %38(%struct.c2port_device.2* %40, i32 0)
  %42 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %43 = call i32 @c2port_strobe_ck(%struct.c2port_device* %42)
  %44 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %45 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %44, i32 0, i32 2
  %46 = load i32 (%struct.c2port_device.2*, i32)*, i32 (%struct.c2port_device.2*, i32)** %45, align 8
  %47 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %48 = bitcast %struct.c2port_device* %47 to %struct.c2port_device.2*
  %49 = call i32 %46(%struct.c2port_device.2* %48, i32 0)
  %50 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %51 = call i32 @c2port_strobe_ck(%struct.c2port_device* %50)
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %68, %2
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %57 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %56, i32 0, i32 2
  %58 = load i32 (%struct.c2port_device.2*, i32)*, i32 (%struct.c2port_device.2*, i32)** %57, align 8
  %59 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %60 = bitcast %struct.c2port_device* %59 to %struct.c2port_device.2*
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 1
  %63 = call i32 %58(%struct.c2port_device.2* %60, i32 %62)
  %64 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %65 = call i32 @c2port_strobe_ck(%struct.c2port_device* %64)
  %66 = load i32, i32* %5, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %52

71:                                               ; preds = %52
  %72 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %73 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %72, i32 0, i32 1
  %74 = load i32 (%struct.c2port_device.1*, i32)*, i32 (%struct.c2port_device.1*, i32)** %73, align 8
  %75 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %76 = bitcast %struct.c2port_device* %75 to %struct.c2port_device.1*
  %77 = call i32 %74(%struct.c2port_device.1* %76, i32 1)
  store i32 20, i32* %7, align 4
  br label %78

78:                                               ; preds = %91, %71
  %79 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %80 = call i32 @c2port_strobe_ck(%struct.c2port_device* %79)
  %81 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %82 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %81, i32 0, i32 0
  %83 = load i64 (%struct.c2port_device.0*)*, i64 (%struct.c2port_device.0*)** %82, align 8
  %84 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %85 = bitcast %struct.c2port_device* %84 to %struct.c2port_device.0*
  %86 = call i64 %83(%struct.c2port_device.0* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %95

89:                                               ; preds = %78
  %90 = call i32 @udelay(i32 1)
  br label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %7, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %78, label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %104

101:                                              ; preds = %95
  %102 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %103 = call i32 @c2port_strobe_ck(%struct.c2port_device* %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @c2port_strobe_ck(%struct.c2port_device*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

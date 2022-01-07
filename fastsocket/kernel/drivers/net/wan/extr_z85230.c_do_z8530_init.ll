; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_z85230.c_do_z8530_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_z85230.c_do_z8530_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_dev = type { %struct.TYPE_4__, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { i32, i8*, i32* }
%struct.TYPE_5__ = type { i32, i8*, i32* }

@z8530_nop = common dso_local global i32 0, align 4
@DCD = common dso_local global i8* null, align 8
@R9 = common dso_local global i32 0, align 4
@R12 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@Z8530 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@Tx_BUF_EMP = common dso_local global i32 0, align 4
@Z85230 = common dso_local global i32 0, align 4
@Z85C30 = common dso_local global i32 0, align 4
@reg_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z8530_dev*)* @do_z8530_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_z8530_init(%struct.z8530_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z8530_dev*, align 8
  store %struct.z8530_dev* %0, %struct.z8530_dev** %3, align 8
  %4 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %5 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32* @z8530_nop, i32** %6, align 8
  %7 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %8 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i32* @z8530_nop, i32** %9, align 8
  %10 = load i8*, i8** @DCD, align 8
  %11 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %12 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i8* %10, i8** %13, align 8
  %14 = load i8*, i8** @DCD, align 8
  %15 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %16 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %19 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %18, i32 0, i32 1
  %20 = load i32, i32* @R9, align 4
  %21 = call i32 @write_zsreg(%struct.TYPE_5__* %19, i32 %20, i32 192)
  %22 = call i32 @udelay(i32 200)
  %23 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %24 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %23, i32 0, i32 1
  %25 = load i32, i32* @R12, align 4
  %26 = call i32 @write_zsreg(%struct.TYPE_5__* %24, i32 %25, i32 170)
  %27 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %28 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %27, i32 0, i32 1
  %29 = load i32, i32* @R12, align 4
  %30 = call i32 @read_zsreg(%struct.TYPE_5__* %28, i32 %29)
  %31 = icmp ne i32 %30, 170
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %99

35:                                               ; preds = %1
  %36 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %37 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %36, i32 0, i32 1
  %38 = load i32, i32* @R12, align 4
  %39 = call i32 @write_zsreg(%struct.TYPE_5__* %37, i32 %38, i32 85)
  %40 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %41 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %40, i32 0, i32 1
  %42 = load i32, i32* @R12, align 4
  %43 = call i32 @read_zsreg(%struct.TYPE_5__* %41, i32 %42)
  %44 = icmp ne i32 %43, 85
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %99

48:                                               ; preds = %35
  %49 = load i32, i32* @Z8530, align 4
  %50 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %51 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %53 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %52, i32 0, i32 1
  %54 = load i32, i32* @R15, align 4
  %55 = call i32 @write_zsreg(%struct.TYPE_5__* %53, i32 %54, i32 1)
  %56 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %57 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %56, i32 0, i32 1
  %58 = load i32, i32* @R15, align 4
  %59 = call i32 @read_zsreg(%struct.TYPE_5__* %57, i32 %58)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %82

61:                                               ; preds = %48
  %62 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %63 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %62, i32 0, i32 1
  %64 = load i32, i32* @R8, align 4
  %65 = call i32 @write_zsreg(%struct.TYPE_5__* %63, i32 %64, i32 0)
  %66 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %67 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %66, i32 0, i32 1
  %68 = load i32, i32* @R0, align 4
  %69 = call i32 @read_zsreg(%struct.TYPE_5__* %67, i32 %68)
  %70 = load i32, i32* @Tx_BUF_EMP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i32, i32* @Z85230, align 4
  %75 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %76 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %81

77:                                               ; preds = %61
  %78 = load i32, i32* @Z85C30, align 4
  %79 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %80 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %48
  %83 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %84 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %83, i32 0, i32 1
  %85 = load i32, i32* @R15, align 4
  %86 = call i32 @write_zsreg(%struct.TYPE_5__* %84, i32 %85, i32 0)
  %87 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %88 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @reg_init, align 4
  %92 = call i32 @memcpy(i32 %90, i32 %91, i32 16)
  %93 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %94 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @reg_init, align 4
  %98 = call i32 @memcpy(i32 %96, i32 %97, i32 16)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %82, %45, %32
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @write_zsreg(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_zsreg(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

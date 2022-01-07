; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_i2c_enumeration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_i2c_enumeration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_device = type { i32, %struct.i2c_adapter* }

@.str = private unnamed_addr constant [20 x i8] c"#%d: not identified\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"IC %d initialized (to i2c_address 0x%x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib8000_i2c_enumeration(%struct.i2c_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_device, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %12, i32 0, i32 1
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %55, %4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 %23, 1
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %12, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = call i32 @dib8000_i2c_write16(%struct.i2c_device* %12, i32 1287, i32 3)
  %29 = call i64 @dib8000_identify(%struct.i2c_device* %12)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = call i32 @dib8000_i2c_write16(%struct.i2c_device* %12, i32 1287, i32 3)
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %12, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = call i64 @dib8000_identify(%struct.i2c_device* %12)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %78

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %21
  %44 = call i32 @dib8000_i2c_write16(%struct.i2c_device* %12, i32 1286, i32 1280)
  %45 = load i32, i32* %11, align 4
  %46 = shl i32 %45, 2
  %47 = or i32 %46, 2
  %48 = call i32 @dib8000_i2c_write16(%struct.i2c_device* %12, i32 1285, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %12, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = call i64 @dib8000_identify(%struct.i2c_device* %12)
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %10, align 4
  br label %18

58:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %74, %58
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, 1
  %67 = or i32 %64, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %12, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = shl i32 %70, 2
  %72 = call i32 @dib8000_i2c_write16(%struct.i2c_device* %12, i32 1285, i32 %71)
  %73 = call i32 @dib8000_i2c_write16(%struct.i2c_device* %12, i32 1286, i32 0)
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %59

77:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %37
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @dib8000_i2c_write16(%struct.i2c_device*, i32, i32) #1

declare dso_local i64 @dib8000_identify(%struct.i2c_device*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

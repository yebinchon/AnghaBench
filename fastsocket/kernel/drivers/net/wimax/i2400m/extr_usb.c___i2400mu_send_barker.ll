; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb.c___i2400mu_send_barker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb.c___i2400mu_send_barker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"RESET: can't get autopm: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"E: barker error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"E: only %d bytes transmitted\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400mu*, i32*, i64, i32)* @__i2400mu_send_barker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__i2400mu_send_barker(%struct.i2400mu* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.i2400mu*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.device*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.i2400mu* %0, %struct.i2400mu** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %9, align 8
  %16 = load %struct.i2400mu*, %struct.i2400mu** %5, align 8
  %17 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %13, align 8
  store i32 1, i32* %15, align 4
  %20 = load %struct.i2400mu*, %struct.i2400mu** %5, align 8
  %21 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @usb_autopm_get_interface(%struct.TYPE_4__* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.device*, %struct.device** %13, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %26, %4
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i64 %33, i32 %34)
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %91

39:                                               ; preds = %30
  %40 = load %struct.i2400mu*, %struct.i2400mu** %5, align 8
  %41 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.usb_endpoint_descriptor* @usb_get_epd(%struct.TYPE_4__* %42, i32 %43)
  store %struct.usb_endpoint_descriptor* %44, %struct.usb_endpoint_descriptor** %9, align 8
  %45 = load %struct.i2400mu*, %struct.i2400mu** %5, align 8
  %46 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %49 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_sndbulkpipe(i32 %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** %14, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @memcpy(i8* %52, i32* %53, i64 %54)
  %56 = load %struct.i2400mu*, %struct.i2400mu** %5, align 8
  %57 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i8*, i8** %14, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* @HZ, align 4
  %63 = call i32 @usb_bulk_msg(i32 %58, i32 %59, i8* %60, i64 %61, i32* %11, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %39
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.device*, %struct.device** %13, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %66
  br label %88

76:                                               ; preds = %39
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.device*, %struct.device** %13, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %81, %76
  br label %88

88:                                               ; preds = %87, %75
  %89 = load i8*, i8** %14, align 8
  %90 = call i32 @kfree(i8* %89)
  br label %91

91:                                               ; preds = %88, %38
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.i2400mu*, %struct.i2400mu** %5, align 8
  %96 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = call i32 @usb_autopm_put_interface(%struct.TYPE_4__* %97)
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i32, i32* %12, align 4
  ret i32 %100
}

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local %struct.usb_endpoint_descriptor* @usb_get_epd(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i8*, i64, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

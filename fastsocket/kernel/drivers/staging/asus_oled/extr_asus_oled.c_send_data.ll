; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_send_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_oled_dev = type { i64, i64, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.asus_oled_packet = type { i32 }

@ASUS_OLED_PACKET_BUF_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@PACK_MODE_G1 = common dso_local global i64 0, align 8
@ASUS_OLED_ROLL = common dso_local global i32 0, align 4
@ASUS_OLED_STATIC = common dso_local global i32 0, align 4
@PACK_MODE_G50 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_oled_dev*)* @send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_data(%struct.asus_oled_dev* %0) #0 {
  %2 = alloca %struct.asus_oled_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.asus_oled_packet*, align 8
  store %struct.asus_oled_dev* %0, %struct.asus_oled_dev** %2, align 8
  %5 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %6 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ASUS_OLED_PACKET_BUF_SIZE, align 8
  %9 = udiv i64 %7, %8
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.asus_oled_packet* @kzalloc(i32 4, i32 %10)
  store %struct.asus_oled_packet* %11, %struct.asus_oled_packet** %4, align 8
  %12 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %4, align 8
  %13 = icmp ne %struct.asus_oled_packet* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %16 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %84

20:                                               ; preds = %1
  %21 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %22 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PACK_MODE_G1, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %20
  %27 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %28 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ASUS_OLED_ROLL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %34 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %4, align 8
  %37 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %38 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ASUS_OLED_STATIC, align 4
  %41 = call i32 @send_packets(%struct.TYPE_3__* %35, %struct.asus_oled_packet* %36, i32 %39, i32 %40, i64 2)
  br label %42

42:                                               ; preds = %32, %26
  %43 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %44 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ASUS_OLED_ROLL, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i64, i64* %3, align 8
  %50 = icmp ugt i64 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i64 2, i64* %3, align 8
  br label %52

52:                                               ; preds = %51, %48, %42
  %53 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %54 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %4, align 8
  %57 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %58 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %61 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @send_packets(%struct.TYPE_3__* %55, %struct.asus_oled_packet* %56, i32 %59, i32 %62, i64 %63)
  br label %81

65:                                               ; preds = %20
  %66 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %67 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PACK_MODE_G50, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %73 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %72, i32 0, i32 3
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %4, align 8
  %76 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %2, align 8
  %77 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @send_packets_g50(%struct.TYPE_3__* %74, %struct.asus_oled_packet* %75, i32 %78)
  br label %80

80:                                               ; preds = %71, %65
  br label %81

81:                                               ; preds = %80, %52
  %82 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %4, align 8
  %83 = call i32 @kfree(%struct.asus_oled_packet* %82)
  br label %84

84:                                               ; preds = %81, %14
  ret void
}

declare dso_local %struct.asus_oled_packet* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @send_packets(%struct.TYPE_3__*, %struct.asus_oled_packet*, i32, i32, i64) #1

declare dso_local i32 @send_packets_g50(%struct.TYPE_3__*, %struct.asus_oled_packet*, i32) #1

declare dso_local i32 @kfree(%struct.asus_oled_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

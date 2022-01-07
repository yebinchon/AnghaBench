; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_drvr_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_drvr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd1201 = type { i32, i32, i32 }

@ZD1201_RXSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zd1201_usbrx = common dso_local global i32 0, align 4
@ZD1201_CMDCODE_INIT = common dso_local global i32 0, align 4
@ZD1201_RID_CNFMAXTXBUFFERNUMBER = common dso_local global i32 0, align 4
@ZD1201_CMDCODE_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd1201*)* @zd1201_drvr_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_drvr_start(%struct.zd1201* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd1201*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.zd1201* %0, %struct.zd1201** %3, align 8
  %9 = load i32, i32* @ZD1201_RXSIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 %9, i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %88

17:                                               ; preds = %1
  %18 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %19 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %22 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %25 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %28 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_rcvbulkpipe(i32 %26, i32 %29)
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* @ZD1201_RXSIZE, align 4
  %33 = load i32, i32* @zd1201_usbrx, align 4
  %34 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %35 = call i32 @usb_fill_bulk_urb(i32 %20, i32 %23, i32 %30, i8* %31, i32 %32, i32 %33, %struct.zd1201* %34)
  %36 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %37 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @usb_submit_urb(i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %17
  br label %84

44:                                               ; preds = %17
  %45 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %46 = load i32, i32* @ZD1201_CMDCODE_INIT, align 4
  %47 = call i32 @zd1201_docmd(%struct.zd1201* %45, i32 %46, i32 0, i32 0, i32 0)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %78

51:                                               ; preds = %44
  %52 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %53 = load i32, i32* @ZD1201_RID_CNFMAXTXBUFFERNUMBER, align 4
  %54 = call i32 @zd1201_getconfig(%struct.zd1201* %52, i32 %53, i32* %7, i32 4)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %78

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = call signext i16 @le16_to_cpu(i32 %59)
  store i16 %60, i16* %6, align 2
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %74, %58
  %62 = load i32, i32* %5, align 4
  %63 = load i16, i16* %6, align 2
  %64 = sext i16 %63 to i32
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %68 = load i32, i32* @ZD1201_CMDCODE_ALLOC, align 4
  %69 = call i32 @zd1201_docmd(%struct.zd1201* %67, i32 %68, i32 1514, i32 0, i32 0)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %78

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %61

77:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %88

78:                                               ; preds = %72, %57, %50
  %79 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %80 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @usb_kill_urb(i32 %81)
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %88

84:                                               ; preds = %43
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @kfree(i8* %85)
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %78, %77, %14
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i8*, i32, i32, %struct.zd1201*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @zd1201_docmd(%struct.zd1201*, i32, i32, i32, i32) #1

declare dso_local i32 @zd1201_getconfig(%struct.zd1201*, i32, i32*, i32) #1

declare dso_local signext i16 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

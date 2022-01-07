; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_net1080.c_net1080_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_net1080.c_net1080_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can't read %s-%s status: %d\00", align 1
@REG_USBCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"can't read USBCTL, %d\00", align 1
@USBCTL_FLUSH_THIS = common dso_local global i32 0, align 4
@USBCTL_FLUSH_OTHER = common dso_local global i32 0, align 4
@REG_TTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"can't read TTL, %d\00", align 1
@NC_READ_TTL_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: assigned TTL, %d ms\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"port %c, peer %sconnected\00", align 1
@STATUS_PORT_A = common dso_local global i32 0, align 4
@STATUS_CONN_OTHER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @net1080_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net1080_reset(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32* @kmalloc(i32 4, i32 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %112

16:                                               ; preds = %1
  %17 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %18 = load i32, i32* @REG_STATUS, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @nc_register_read(%struct.usbnet* %17, i32 %18, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %31 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34, i32 %35)
  br label %108

37:                                               ; preds = %16
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  %40 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @nc_dump_status(%struct.usbnet* %40, i32 %41)
  %43 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %44 = load i32, i32* @REG_USBCTL, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @nc_register_read(%struct.usbnet* %43, i32 %44, i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %108

51:                                               ; preds = %37
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %4, align 4
  %54 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @nc_dump_usbctl(%struct.usbnet* %54, i32 %55)
  %57 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %58 = load i32, i32* @REG_USBCTL, align 4
  %59 = load i32, i32* @USBCTL_FLUSH_THIS, align 4
  %60 = load i32, i32* @USBCTL_FLUSH_OTHER, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @nc_register_write(%struct.usbnet* %57, i32 %58, i32 %61)
  %63 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %64 = load i32, i32* @REG_TTL, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @nc_register_read(%struct.usbnet* %63, i32 %64, i32* %65)
  store i32 %66, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %51
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %108

71:                                               ; preds = %51
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %6, align 4
  %74 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %75 = load i32, i32* @REG_TTL, align 4
  %76 = load i32, i32* @NC_READ_TTL_MS, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @TTL_OTHER(i32 %77)
  %79 = call i32 @MK_TTL(i32 %76, i32 %78)
  %80 = call i32 @nc_register_write(%struct.usbnet* %74, i32 %75, i32 %79)
  %81 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %82 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NC_READ_TTL_MS, align 4
  %87 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %89 = call i64 @netif_msg_link(%struct.usbnet* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %71
  %92 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @STATUS_PORT_A, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 65, i32 66
  %99 = trunc i32 %98 to i8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @STATUS_CONN_OTHER, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %106 = call i32 @devinfo(%struct.usbnet* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8 signext %99, i8* %105)
  br label %107

107:                                              ; preds = %91, %71
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %107, %68, %48, %22
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @kfree(i32* %109)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %13
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @nc_register_read(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @dbg(i8*, i32, ...) #1

declare dso_local i32 @nc_dump_status(%struct.usbnet*, i32) #1

declare dso_local i32 @nc_dump_usbctl(%struct.usbnet*, i32) #1

declare dso_local i32 @nc_register_write(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @MK_TTL(i32, i32) #1

declare dso_local i32 @TTL_OTHER(i32) #1

declare dso_local i64 @netif_msg_link(%struct.usbnet*) #1

declare dso_local i32 @devinfo(%struct.usbnet*, i8*, i8 signext, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

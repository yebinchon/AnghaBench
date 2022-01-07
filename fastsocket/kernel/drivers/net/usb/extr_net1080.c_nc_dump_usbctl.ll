; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_net1080.c_nc_dump_usbctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_net1080.c_nc_dump_usbctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [68 x i8] c"net1080 %s-%s usbctl 0x%x:%s%s%s%s%s; this%s%s; other%s%s; r/o 0x%x\00", align 1
@USBCTL_ENABLE_LANG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" lang\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@USBCTL_ENABLE_MFGR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" mfgr\00", align 1
@USBCTL_ENABLE_PROD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" prod\00", align 1
@USBCTL_ENABLE_SERIAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c" serial\00", align 1
@USBCTL_ENABLE_DEFAULTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c" defaults\00", align 1
@USBCTL_FLUSH_OTHER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c" FLUSH\00", align 1
@USBCTL_DISCONN_OTHER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c" DIS\00", align 1
@USBCTL_FLUSH_THIS = common dso_local global i32 0, align 4
@USBCTL_DISCONN_THIS = common dso_local global i32 0, align 4
@USBCTL_WRITABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i32)* @nc_dump_usbctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nc_dump_usbctl(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %6 = call i32 @netif_msg_link(%struct.usbnet* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %83

9:                                                ; preds = %2
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @USBCTL_ENABLE_LANG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @USBCTL_ENABLE_MFGR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @USBCTL_ENABLE_PROD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @USBCTL_ENABLE_SERIAL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @USBCTL_ENABLE_DEFAULTS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @USBCTL_FLUSH_OTHER, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @USBCTL_DISCONN_OTHER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @USBCTL_FLUSH_THIS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @USBCTL_DISCONN_THIS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @USBCTL_WRITABLE_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = call i32 @devdbg(%struct.usbnet* %10, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22, i32 %23, i8* %29, i8* %35, i8* %41, i8* %47, i8* %53, i8* %59, i8* %65, i8* %71, i8* %77, i32 %81)
  br label %83

83:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @netif_msg_link(%struct.usbnet*) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

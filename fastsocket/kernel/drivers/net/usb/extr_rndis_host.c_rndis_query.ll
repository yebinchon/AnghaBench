; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rndis_host.c_rndis_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rndis_host.c_rndis_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_interface = type { i32 }
%union.anon = type { i8* }
%struct.rndis_query = type { i8*, i8*, i32, i8*, i32 }
%struct.rndis_msg_hdr = type { i32 }
%struct.rndis_query_c = type { i32, i32, i32 }

@RNDIS_MSG_QUERY = common dso_local global i32 0, align 4
@CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"RNDIS_MSG_QUERY(0x%08x) failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"RNDIS_MSG_QUERY(0x%08x) invalid response - off %d len %d\0A\00", align 1
@EDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*, i8*, i32, i32, i8**, i32*)* @rndis_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_query(%struct.usbnet* %0, %struct.usb_interface* %1, i8* %2, i32 %3, i32 %4, i8** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.usbnet*, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.anon, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %9, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = bitcast %union.anon* %17 to i8**
  store i8* %20, i8** %21, align 8
  %22 = bitcast %union.anon* %17 to %struct.rndis_query**
  %23 = load %struct.rndis_query*, %struct.rndis_query** %22, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 40, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(%struct.rndis_query* %23, i32 0, i32 %27)
  %29 = load i32, i32* @RNDIS_MSG_QUERY, align 4
  %30 = bitcast %union.anon* %17 to %struct.rndis_query**
  %31 = load %struct.rndis_query*, %struct.rndis_query** %30, align 8
  %32 = getelementptr inbounds %struct.rndis_query, %struct.rndis_query* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 40, %34
  %36 = trunc i64 %35 to i32
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = bitcast %union.anon* %17 to %struct.rndis_query**
  %39 = load %struct.rndis_query*, %struct.rndis_query** %38, align 8
  %40 = getelementptr inbounds %struct.rndis_query, %struct.rndis_query* %39, i32 0, i32 3
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = bitcast %union.anon* %17 to %struct.rndis_query**
  %43 = load %struct.rndis_query*, %struct.rndis_query** %42, align 8
  %44 = getelementptr inbounds %struct.rndis_query, %struct.rndis_query* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = bitcast %union.anon* %17 to %struct.rndis_query**
  %48 = load %struct.rndis_query*, %struct.rndis_query** %47, align 8
  %49 = getelementptr inbounds %struct.rndis_query, %struct.rndis_query* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = call i8* @cpu_to_le32(i32 20)
  %51 = bitcast %union.anon* %17 to %struct.rndis_query**
  %52 = load %struct.rndis_query*, %struct.rndis_query** %51, align 8
  %53 = getelementptr inbounds %struct.rndis_query, %struct.rndis_query* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %55 = bitcast %union.anon* %17 to %struct.rndis_msg_hdr**
  %56 = load %struct.rndis_msg_hdr*, %struct.rndis_msg_hdr** %55, align 8
  %57 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %58 = call i32 @rndis_command(%struct.usbnet* %54, %struct.rndis_msg_hdr* %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %7
  %65 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %66 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %65, i32 0, i32 0
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %8, align 4
  br label %123

71:                                               ; preds = %7
  %72 = bitcast %union.anon* %17 to %struct.rndis_query_c**
  %73 = load %struct.rndis_query_c*, %struct.rndis_query_c** %72, align 8
  %74 = getelementptr inbounds %struct.rndis_query_c, %struct.rndis_query_c* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32_to_cpu(i32 %75)
  store i32 %76, i32* %18, align 4
  %77 = bitcast %union.anon* %17 to %struct.rndis_query_c**
  %78 = load %struct.rndis_query_c*, %struct.rndis_query_c** %77, align 8
  %79 = getelementptr inbounds %struct.rndis_query_c, %struct.rndis_query_c* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %18, align 4
  %83 = add nsw i32 8, %82
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %87 = icmp sgt i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %71
  br label %114

92:                                               ; preds = %71
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* %19, align 4
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %114

102:                                              ; preds = %96, %92
  %103 = bitcast %union.anon* %17 to %struct.rndis_query_c**
  %104 = load %struct.rndis_query_c*, %struct.rndis_query_c** %103, align 8
  %105 = getelementptr inbounds %struct.rndis_query_c, %struct.rndis_query_c* %104, i32 0, i32 0
  %106 = bitcast i32* %105 to i8*
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8**, i8*** %14, align 8
  store i8* %109, i8** %110, align 8
  %111 = load i32, i32* %19, align 4
  %112 = load i32*, i32** %15, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %8, align 4
  br label %123

114:                                              ; preds = %101, %91
  %115 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %116 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %115, i32 0, i32 0
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %19, align 4
  %120 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* @EDOM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %114, %102, %64
  %124 = load i32, i32* %8, align 4
  ret i32 %124
}

declare dso_local i32 @memset(%struct.rndis_query*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @rndis_command(%struct.usbnet*, %struct.rndis_msg_hdr*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

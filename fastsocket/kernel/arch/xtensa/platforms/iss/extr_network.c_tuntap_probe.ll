; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/iss/extr_network.c_tuntap_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/iss/extr_network.c_tuntap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_net_private = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@TRANSPORT_TUNTAP_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Extra garbage on specification : '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid argument: %s. Skipping device!\0A\00", align 1
@TRANSPORT_TUNTAP_MTU = common dso_local global i32 0, align 4
@tuntap_open = common dso_local global i32 0, align 4
@tuntap_close = common dso_local global i32 0, align 4
@tuntap_read = common dso_local global i32 0, align 4
@tuntap_write = common dso_local global i32 0, align 4
@tuntap_protocol = common dso_local global i32 0, align 4
@tuntap_poll = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"TUN/TAP backend - \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_net_private*, i32, i8*)* @tuntap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuntap_probe(%struct.iss_net_private* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iss_net_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.iss_net_private* %0, %struct.iss_net_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @TRANSPORT_TUNTAP_NAME, align 4
  %13 = call i32 @strlen(i32 %12)
  store i32 %13, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @TRANSPORT_TUNTAP_NAME, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @strncmp(i8* %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

20:                                               ; preds = %3
  %21 = load i32, i32* @TRANSPORT_TUNTAP_NAME, align 4
  %22 = call i32 @strlen(i32 %21)
  %23 = load i8*, i8** %7, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 44
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i8* @split_if_spec(i8* %31, i8** %10, i8** %9)
  store i8* %32, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i32 0, i32* %4, align 4
  br label %108

37:                                               ; preds = %29
  br label %47

38:                                               ; preds = %20
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  store i32 0, i32* %4, align 4
  br label %108

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load %struct.iss_net_private*, %struct.iss_net_private** %5, align 8
  %52 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @strncpy(i32 %56, i8* %57, i32 4)
  %59 = load %struct.iss_net_private*, %struct.iss_net_private** %5, align 8
  %60 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %73

64:                                               ; preds = %47
  %65 = load %struct.iss_net_private*, %struct.iss_net_private** %5, align 8
  %66 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TRANSPORT_TUNTAP_NAME, align 4
  %72 = call i32 @strcpy(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %64, %50
  %74 = load i32, i32* @TRANSPORT_TUNTAP_MTU, align 4
  %75 = load %struct.iss_net_private*, %struct.iss_net_private** %5, align 8
  %76 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.iss_net_private*, %struct.iss_net_private** %5, align 8
  %78 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 -1, i32* %81, align 4
  %82 = load i32, i32* @tuntap_open, align 4
  %83 = load %struct.iss_net_private*, %struct.iss_net_private** %5, align 8
  %84 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @tuntap_close, align 4
  %87 = load %struct.iss_net_private*, %struct.iss_net_private** %5, align 8
  %88 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @tuntap_read, align 4
  %91 = load %struct.iss_net_private*, %struct.iss_net_private** %5, align 8
  %92 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @tuntap_write, align 4
  %95 = load %struct.iss_net_private*, %struct.iss_net_private** %5, align 8
  %96 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load i32, i32* @tuntap_protocol, align 4
  %99 = load %struct.iss_net_private*, %struct.iss_net_private** %5, align 8
  %100 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @tuntap_poll, align 4
  %103 = load %struct.iss_net_private*, %struct.iss_net_private** %5, align 8
  %104 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %73, %43, %34, %19
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i8* @split_if_spec(i8*, i8**, i8**) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

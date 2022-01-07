; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_enable_zfcp_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_enable_zfcp_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.stat = type { i32 }

@IPL_DEVNO = common dso_local global i8* null, align 8
@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"/sys/bus/ccw/drivers/zfcp/%s/online\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@IPL_WWPN = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"/sys/bus/ccw/drivers/zfcp/%s/port_add\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@IPL_LUN = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"/sys/bus/ccw/drivers/zfcp/%s/%s/unit_add\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"/sys/firmware/ipl/bootprog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @enable_zfcp_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_zfcp_device() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  %4 = alloca %struct.stat, align 4
  %5 = load i8*, i8** @IPL_DEVNO, align 8
  %6 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %7 = call i64 @read_file(i8* %5, i8* %6, i32 8)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %63

10:                                               ; preds = %0
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %13 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %15 = call i64 @write_to_file(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %63

18:                                               ; preds = %10
  %19 = load i8*, i8** @IPL_WWPN, align 8
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %21 = call i64 @read_file(i8* %19, i8* %20, i32 8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %1, align 4
  br label %63

24:                                               ; preds = %18
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %27 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %29 = call i64 @stat(i8* %28, %struct.stat* %4)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %34 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %37 = call i64 @write_to_file(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %1, align 4
  br label %63

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i8*, i8** @IPL_LUN, align 8
  %43 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %44 = call i64 @read_file(i8* %42, i8* %43, i32 8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %1, align 4
  br label %63

47:                                               ; preds = %41
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %50 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %51 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %49, i8* %50)
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %53 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %54 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %57 = call i64 @write_to_file(i8* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store i32 -1, i32* %1, align 4
  br label %63

60:                                               ; preds = %47
  %61 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 3), align 8
  %62 = call i64 @read_file(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %61, i32 8)
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %60, %59, %46, %39, %23, %17, %9
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i64 @read_file(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i64 @write_to_file(i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

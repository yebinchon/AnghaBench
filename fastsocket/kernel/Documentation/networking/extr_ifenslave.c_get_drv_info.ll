; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_get_drv_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_get_drv_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i64, i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@ETHTOOL_GDRVINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ifenslave\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@BOND_ABI_VERSION = common dso_local global i32 0, align 4
@skfd = common dso_local global i32 0, align 4
@SIOCETHTOOL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@saved_errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Master '%s': Error: get bonding info failed %s\0A\00", align 1
@abi_ver = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [82 x i8] c"Master '%s': Error: got invalid string as an ABI version from the bonding module\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ABI ver is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_drv_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_drv_info(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifreq, align 8
  %5 = alloca %struct.ethtool_drvinfo, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 @memset(%struct.ifreq* %4, i32 0, i32 16)
  %8 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @IFNAMSIZ, align 4
  %12 = call i32 @strncpy(i32 %9, i8* %10, i32 %11)
  %13 = ptrtoint %struct.ethtool_drvinfo* %5 to i64
  %14 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = load i32, i32* @ETHTOOL_GDRVINFO, align 4
  %16 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %5, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strncpy(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 32)
  %20 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BOND_ABI_VERSION, align 4
  %23 = call i32 @snprintf(i32 %21, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @skfd, align 4
  %25 = load i32, i32* @SIOCETHTOOL, align 4
  %26 = call i64 @ioctl(i32 %24, i32 %25, %struct.ifreq* %4)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EOPNOTSUPP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %50

33:                                               ; preds = %28
  %34 = load i64, i64* @errno, align 8
  store i64 %34, i64* @saved_errno, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* @saved_errno, align 8
  %37 = call i32 @strerror(i64 %36)
  %38 = call i32 (i8*, i8*, ...) @v_print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %35, i32 %37)
  store i32 1, i32* %2, align 4
  br label %53

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @strtoul(i32 %41, i8** %6, i32 0)
  store i8* %42, i8** @abi_ver, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 (i8*, i8*, ...) @v_print(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  store i32 1, i32* %2, align 4
  br label %53

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i8*, i8** @abi_ver, align 8
  %52 = call i32 (i8*, i8*, ...) @v_print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %46, %33
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @v_print(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i8* @strtoul(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

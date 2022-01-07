; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_set_slave_hwaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_set_slave_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.ifreq = type { i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@skfd = common dso_local global i32 0, align 4
@SIOCSIFHWADDR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@saved_errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Slave '%s': Error: SIOCSIFHWADDR failed: %s\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"  The device is busy: it must be idle before running this command.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [109 x i8] c"  The device does not support setting the MAC address.\0A  Your kernel likely does not support slave devices.\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"  The device's address type does not match the master's address type.\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"Slave '%s': hardware address set to %2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr*)* @set_slave_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_slave_hwaddr(i8* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ifreq, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @IFNAMSIZ, align 4
  %17 = call i32 @strncpy(i32 %14, i8* %15, i32 %16)
  %18 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %19 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %20 = call i32 @memcpy(i32* %18, %struct.sockaddr* %19, i32 8)
  %21 = load i32, i32* @skfd, align 4
  %22 = load i32, i32* @SIOCSIFHWADDR, align 4
  %23 = call i32 @ioctl(i32 %21, i32 %22, %struct.ifreq* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %2
  %27 = load i64, i64* @errno, align 8
  store i64 %27, i64* @saved_errno, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* @saved_errno, align 8
  %30 = call i32 @strerror(i64 %29)
  %31 = call i32 (i8*, ...) @v_print(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %30)
  %32 = load i64, i64* @saved_errno, align 8
  %33 = load i64, i64* @EBUSY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 (i8*, ...) @v_print(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %51

37:                                               ; preds = %26
  %38 = load i64, i64* @saved_errno, align 8
  %39 = load i64, i64* @EOPNOTSUPP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @v_print(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0))
  br label %50

43:                                               ; preds = %37
  %44 = load i64, i64* @saved_errno, align 8
  %45 = load i64, i64* @EINVAL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @v_print(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %43
  br label %50

50:                                               ; preds = %49, %41
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %82

53:                                               ; preds = %2
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 5
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 (i8*, ...) @v_print(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i8* %54, i32 %58, i32 %62, i32 %66, i32 %70, i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %53
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %51
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @v_print(i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

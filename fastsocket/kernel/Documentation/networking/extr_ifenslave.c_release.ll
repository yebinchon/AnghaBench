; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32, i32 }

@slave_flags = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IFF_SLAVE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Illegal operation: The specified slave interface '%s' is not a slave\0A\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@skfd = common dso_local global i32 0, align 4
@SIOCBONDRELEASE = common dso_local global i32 0, align 4
@BOND_RELEASE_OLD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@saved_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Master '%s': Error: SIOCBONDRELEASE failed: %s\0A\00", align 1
@abi_ver = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Slave '%s': Error: bring interface down failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @release(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifreq, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slave_flags, i32 0, i32 0), align 4
  %9 = load i32, i32* @IFF_SLAVE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 1, i32* %3, align 4
  br label %61

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @IFNAMSIZ, align 4
  %21 = call i32 @strncpy(i32 %18, i8* %19, i32 %20)
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @IFNAMSIZ, align 4
  %26 = call i32 @strncpy(i32 %23, i8* %24, i32 %25)
  %27 = load i32, i32* @skfd, align 4
  %28 = load i32, i32* @SIOCBONDRELEASE, align 4
  %29 = call i64 @ioctl(i32 %27, i32 %28, %struct.ifreq* %6)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %16
  %32 = load i32, i32* @skfd, align 4
  %33 = load i32, i32* @BOND_RELEASE_OLD, align 4
  %34 = call i64 @ioctl(i32 %32, i32 %33, %struct.ifreq* %6)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @errno, align 4
  store i32 %37, i32* @saved_errno, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* @saved_errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 @v_print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %40)
  store i32 1, i32* %3, align 4
  br label %61

42:                                               ; preds = %31, %16
  %43 = load i32, i32* @abi_ver, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slave_flags, i32 0, i32 0), align 4
  %48 = call i32 @set_if_down(i8* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @set_slave_mtu(i8* %58, i32 1500)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %36, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @v_print(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @set_if_down(i8*, i32) #1

declare dso_local i32 @set_slave_mtu(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

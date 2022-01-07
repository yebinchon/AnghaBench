; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_set_master_hwaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_set_master_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.ifreq = type { i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@skfd = common dso_local global i32 0, align 4
@SIOCSIFHWADDR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@saved_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Master '%s': Error: SIOCSIFHWADDR failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Master '%s': hardware address set to %2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr*)* @set_master_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_master_hwaddr(i8* %0, %struct.sockaddr* %1) #0 {
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
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* @saved_errno, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @saved_errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = call i32 (i8*, i8*, i8, ...) @v_print(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %28, i8 zeroext %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %2
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 5
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = call i32 (i8*, i8*, i8, ...) @v_print(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8 zeroext %38, i32 %42, i32 %46, i32 %50, i32 %54, i32 %58)
  br label %60

60:                                               ; preds = %34
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %26
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @v_print(i8*, i8*, i8 zeroext, ...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

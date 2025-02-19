; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_add_to_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_add_to_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"must specify bridge name\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"interface %s does not exist!\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCBRADDIF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"can't add %s to bridge %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @add_to_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_bridge(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifreq, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @if_nametoindex(i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @IFNAMSIZ, align 4
  %27 = call i32 @strncpy(i8* %24, i8* %25, i32 %26)
  %28 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @IFNAMSIZ, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load i32, i32* %7, align 4
  %35 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SIOCBRADDIF, align 4
  %38 = call i64 @ioctl(i32 %36, i32 %37, %struct.ifreq* %8)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %22
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %22
  ret void
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @if_nametoindex(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @err(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

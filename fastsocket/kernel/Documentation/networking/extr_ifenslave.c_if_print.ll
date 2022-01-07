; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_if_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifconf = type { i32, i8*, %struct.ifreq* }
%struct.ifreq = type { i8* }

@skfd = common dso_local global i32 0, align 4
@SIOCGIFCONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SIOCGIFCONF failed\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: unknown interface.\0A\00", align 1
@mif_flags = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@opt_a = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @if_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_print(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca %struct.ifconf, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %57

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %4, i32 0, i32 0
  store i32 1024, i32* %10, align 8
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %12 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %4, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* @skfd, align 4
  %14 = load i32, i32* @SIOCGIFCONF, align 4
  %15 = call i64 @ioctl(i32 %13, i32 %14, %struct.ifconf* %4)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %66

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %4, i32 0, i32 2
  %21 = load %struct.ifreq*, %struct.ifreq** %20, align 8
  store %struct.ifreq* %21, %struct.ifreq** %5, align 8
  %22 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %53, %19
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %33 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @if_getconfig(i8* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @stderr, align 4
  %39 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %53

43:                                               ; preds = %31
  %44 = load i32, i32* @mif_flags, align 4
  %45 = load i32, i32* @IFF_UP, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @opt_a, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %53

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %51, %37
  %54 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %55 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %54, i32 1
  store %struct.ifreq* %55, %struct.ifreq** %5, align 8
  br label %27

56:                                               ; preds = %27
  br label %66

57:                                               ; preds = %1
  %58 = load i8*, i8** %2, align 8
  %59 = call i64 @if_getconfig(i8* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @stderr, align 4
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %17, %65, %56
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.ifconf*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @if_getconfig(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

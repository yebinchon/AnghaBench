; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_get_if_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_get_if_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_ifr = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@skfd = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@saved_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Interface '%s': Error: %s failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dev_ifr*)* @get_if_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_if_settings(i8* %0, %struct.dev_ifr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dev_ifr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dev_ifr* %1, %struct.dev_ifr** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %58, %2
  %9 = load %struct.dev_ifr*, %struct.dev_ifr** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.dev_ifr, %struct.dev_ifr* %9, i64 %11
  %13 = getelementptr inbounds %struct.dev_ifr, %struct.dev_ifr* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %61

16:                                               ; preds = %8
  %17 = load %struct.dev_ifr*, %struct.dev_ifr** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dev_ifr, %struct.dev_ifr* %17, i64 %19
  %21 = getelementptr inbounds %struct.dev_ifr, %struct.dev_ifr* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @IFNAMSIZ, align 4
  %27 = call i32 @strncpy(i32 %24, i8* %25, i32 %26)
  %28 = load i32, i32* @skfd, align 4
  %29 = load %struct.dev_ifr*, %struct.dev_ifr** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dev_ifr, %struct.dev_ifr* %29, i64 %31
  %33 = getelementptr inbounds %struct.dev_ifr, %struct.dev_ifr* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dev_ifr*, %struct.dev_ifr** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dev_ifr, %struct.dev_ifr* %35, i64 %37
  %39 = getelementptr inbounds %struct.dev_ifr, %struct.dev_ifr* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @ioctl(i32 %28, i32 %34, %struct.TYPE_2__* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %16
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* @saved_errno, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.dev_ifr*, %struct.dev_ifr** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.dev_ifr, %struct.dev_ifr* %47, i64 %49
  %51 = getelementptr inbounds %struct.dev_ifr, %struct.dev_ifr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @saved_errno, align 4
  %54 = call i32 @strerror(i32 %53)
  %55 = call i32 @v_print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %52, i32 %54)
  %56 = load i32, i32* @saved_errno, align 4
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %16
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %8

61:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @v_print(i8*, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

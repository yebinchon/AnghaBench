; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_efirtc.c_efi_rtc_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_efirtc.c_efi_rtc_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32*, i32*, %struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }

@efi_rtc_lock = common dso_local global i32 0, align 4
@efi = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [78 x i8] c"Time           : %u:%u:%u.%09u\0ADate           : %u-%u-%u\0ADaylight       : %u\0A\00", align 1
@EFI_UNSPECIFIED_TIMEZONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Timezone       : unspecified\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Timezone       : %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [118 x i8] c"Alarm Time     : %u:%u:%u.%09u\0AAlarm Date     : %u-%u-%u\0AAlarm Daylight : %u\0AEnabled        : %s\0APending        : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Resolution     : %u\0AAccuracy       : %u\0ASetstoZero     : %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @efi_rtc_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_rtc_get_status(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  store i8* %10, i8** %6, align 8
  %11 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 56)
  %12 = call i32 @memset(%struct.TYPE_8__* %4, i32 0, i32 56)
  %13 = call i32 @memset(%struct.TYPE_8__* %5, i32 0, i32 56)
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @efi_rtc_lock, i64 %14)
  %16 = load i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @efi, i32 0, i32 1), align 8
  %17 = call i32 %16(%struct.TYPE_8__* %3, %struct.TYPE_8__* %5)
  %18 = load i32 (i32*, i32*, %struct.TYPE_8__*)*, i32 (i32*, i32*, %struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @efi, i32 0, i32 0), align 8
  %19 = call i32 %18(i32* %7, i32* %8, %struct.TYPE_8__* %4)
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @efi_rtc_lock, i64 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26, i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EFI_UNSPECIFIED_TIMEZONE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %1
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i8*, i8** %6, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %6, align 8
  br label %61

53:                                               ; preds = %1
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %6, align 8
  br label %61

61:                                               ; preds = %53, %47
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 1
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %66, i32 %68, i32 %70, i32 %72, i32 %74, i32 %76, i32 %78, i8* %82, i8* %86)
  %88 = load i8*, i8** %6, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 8
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @EFI_UNSPECIFIED_TIMEZONE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %61
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i8*, i8** %6, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %6, align 8
  br label %109

101:                                              ; preds = %61
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %104)
  %106 = load i8*, i8** %6, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %6, align 8
  br label %109

109:                                              ; preds = %101, %95
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 9
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 10
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 11
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, i8*, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %112, i32 %114, i32 %116)
  %118 = load i8*, i8** %6, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %6, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i8*, i8** %2, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  ret i32 %126
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

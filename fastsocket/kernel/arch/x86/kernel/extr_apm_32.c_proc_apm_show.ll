; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_proc_apm_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_proc_apm_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@apm_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s %d.%d 0x%02x 0x%02x 0x%02x 0x%02x %d%% %d %s\0A\00", align 1
@driver_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @proc_apm_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_apm_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i16 255, i16* %9, align 2
  store i16 255, i16* %10, align 2
  store i16 255, i16* %11, align 2
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = call i32 (...) @num_online_cpus()
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %62

17:                                               ; preds = %2
  %18 = call i32 @apm_get_power_status(i16* %5, i16* %6, i16* %7)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %62, label %20

20:                                               ; preds = %17
  %21 = load i16, i16* %5, align 2
  %22 = zext i16 %21 to i32
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %9, align 2
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %10, align 2
  %30 = load i16, i16* %6, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 255
  %33 = icmp ne i32 %32, 255
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 255
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %34, %20
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @apm_info, i32 0, i32 0), align 4
  %40 = icmp sgt i32 %39, 256
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load i16, i16* %6, align 2
  %43 = zext i16 %42 to i32
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 255
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %11, align 2
  %47 = load i16, i16* %7, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp ne i32 %48, 65535
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load i16, i16* %7, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, 32768
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  store i8* %56, i8** %14, align 8
  %57 = load i16, i16* %7, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 32767
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %50, %41
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %61, %17, %2
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load i32, i32* @driver_version, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @apm_info, i32 0, i32 1, i32 0), align 4
  %66 = ashr i32 %65, 8
  %67 = and i32 %66, 255
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @apm_info, i32 0, i32 1, i32 0), align 4
  %69 = and i32 %68, 255
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @apm_info, i32 0, i32 1, i32 1), align 4
  %71 = load i16, i16* %9, align 2
  %72 = load i16, i16* %10, align 2
  %73 = load i16, i16* %11, align 2
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %67, i32 %69, i32 %70, i16 zeroext %71, i16 zeroext %72, i16 zeroext %73, i32 %74, i32 %75, i8* %76)
  ret i32 0
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @apm_get_power_status(i16*, i16*, i16*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i16 zeroext, i16 zeroext, i16 zeroext, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

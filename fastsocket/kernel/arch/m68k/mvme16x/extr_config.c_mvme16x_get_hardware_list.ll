; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mvme16x/extr_config.c_mvme16x_get_hardware_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mvme16x/extr_config.c_mvme16x_get_hardware_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.seq_file = type { i32 }

@mvme_bdid = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@MVME162_VERSION_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"VMEchip2        %spresent\0A\00", align 1
@MVME16x_CONFIG_NO_VMECHIP2 = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NOT \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"SCSI interface  %spresent\0A\00", align 1
@MVME16x_CONFIG_NO_SCSICHIP = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Ethernet i/f    %spresent\0A\00", align 1
@MVME16x_CONFIG_NO_ETHERNET = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @mvme16x_get_hardware_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvme16x_get_hardware_list(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  store %struct.TYPE_3__* @mvme_bdid, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 354
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 370
  br i1 %13, label %14, label %48

14:                                               ; preds = %9, %1
  %15 = load i64, i64* @MVME162_VERSION_REG, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %4, align 1
  %18 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @MVME16x_CONFIG_NO_VMECHIP2, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @MVME16x_CONFIG_NO_SCSICHIP, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @MVME16x_CONFIG_NO_ETHERNET, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %14, %9
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_u14_34f_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_u14_34f_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_host_template = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"u14-34f\00", align 1
@boot_options = common dso_local global i32 0, align 4
@MAX_BOARDS = common dso_local global i32 0, align 4
@sh = common dso_local global i32** null, align 8
@io_port = common dso_local global i64* null, align 8
@SKIP = common dso_local global i64 0, align 8
@num_boards = common dso_local global i32 0, align 4
@MAX_INT_PARAM = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@setup_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_host_template*)* @u14_34f_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u14_34f_detect(%struct.scsi_host_template* %0) #0 {
  %2 = alloca %struct.scsi_host_template*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.scsi_host_template*, %struct.scsi_host_template** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32, i32* @boot_options, align 4
  %8 = call i64 @strlen(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @boot_options, align 4
  %12 = call i32 @option_setup(i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MAX_BOARDS, align 4
  %17 = add nsw i32 %16, 1
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i32**, i32*** @sh, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %14

27:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %62, %27
  %29 = load i64*, i64** @io_port, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %28
  %36 = load i64*, i64** @io_port, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SKIP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %62

44:                                               ; preds = %35
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @MAX_BOARDS, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i64*, i64** @io_port, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.scsi_host_template*, %struct.scsi_host_template** %2, align 8
  %56 = call i64 @port_detect(i64 %53, i32 %54, %struct.scsi_host_template* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* %3, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %48, %44
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %28

65:                                               ; preds = %28
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* @num_boards, align 4
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @option_setup(i32) #1

declare dso_local i64 @port_detect(i64, i32, %struct.scsi_host_template*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

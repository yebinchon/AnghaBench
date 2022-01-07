; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_drv.c_pcbit_state_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_drv.c_pcbit_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { i32 }
%struct.pcbit_chan = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"change on device: %d channel:%d\0A%s -> %s -> %s\0A\00", align 1
@isdn_state_table = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcbit_state_change(%struct.pcbit_dev* %0, %struct.pcbit_chan* %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4) #0 {
  %6 = alloca %struct.pcbit_dev*, align 8
  %7 = alloca %struct.pcbit_chan*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca [256 x i8], align 16
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %6, align 8
  store %struct.pcbit_chan* %1, %struct.pcbit_chan** %7, align 8
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  store i16 %4, i16* %10, align 2
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %13 = load %struct.pcbit_dev*, %struct.pcbit_dev** %6, align 8
  %14 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pcbit_chan*, %struct.pcbit_chan** %7, align 8
  %17 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8**, i8*** @isdn_state_table, align 8
  %20 = load i16, i16* %8, align 2
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i16, i16* %9, align 2
  %25 = call i8* @strisdnevent(i16 zeroext %24)
  %26 = load i8**, i8*** @isdn_state_table, align 8
  %27 = load i16, i16* %10, align 2
  %28 = zext i16 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i8* %23, i8* %25, i8* %30)
  %32 = load %struct.pcbit_dev*, %struct.pcbit_dev** %6, align 8
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %34 = call i32 @pcbit_logstat(%struct.pcbit_dev* %32, i8* %33)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @strisdnevent(i16 zeroext) #1

declare dso_local i32 @pcbit_logstat(%struct.pcbit_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

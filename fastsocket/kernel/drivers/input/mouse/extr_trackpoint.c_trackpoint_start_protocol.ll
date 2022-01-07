; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_trackpoint.c_trackpoint_start_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_trackpoint.c_trackpoint_start_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@TP_READ_ID = common dso_local global i32 0, align 4
@TP_MAGIC_IDENT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8*)* @trackpoint_start_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trackpoint_start_protocol(%struct.psmouse* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 2, i1 false)
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %11 = load i32, i32* @TP_READ_ID, align 4
  %12 = call i32 @MAKE_PS2_CMD(i32 0, i32 2, i32 %11)
  %13 = call i64 @ps2_command(i32* %9, i8* %10, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @TP_MAGIC_IDENT, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %32

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %5, align 8
  store i8 %29, i8* %30, align 1
  br label %31

31:                                               ; preds = %27, %24
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %23, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ps2_command(i32*, i8*, i32) #2

declare dso_local i32 @MAKE_PS2_CMD(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

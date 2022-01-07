; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_trackpoint.c_trackpoint_show_int_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_trackpoint.c_trackpoint_show_int_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.trackpoint_data* }
%struct.trackpoint_data = type { i32 }
%struct.trackpoint_attr_data = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8*, i8*)* @trackpoint_show_int_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trackpoint_show_int_attr(%struct.psmouse* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.trackpoint_data*, align 8
  %8 = alloca %struct.trackpoint_attr_data*, align 8
  %9 = alloca i8, align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  %12 = load %struct.trackpoint_data*, %struct.trackpoint_data** %11, align 8
  store %struct.trackpoint_data* %12, %struct.trackpoint_data** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.trackpoint_attr_data*
  store %struct.trackpoint_attr_data* %14, %struct.trackpoint_attr_data** %8, align 8
  %15 = load %struct.trackpoint_data*, %struct.trackpoint_data** %7, align 8
  %16 = bitcast %struct.trackpoint_data* %15 to i8*
  %17 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %8, align 8
  %18 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %9, align 1
  %23 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %8, align 8
  %24 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i8, i8* %9, align 1
  %29 = icmp ne i8 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %9, align 1
  br label %33

33:                                               ; preds = %27, %3
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %9, align 1
  %36 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 zeroext %35)
  ret i32 %36
}

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

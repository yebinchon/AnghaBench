; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_attr_show_getreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_attr_show_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.fsp_data* }
%struct.fsp_data = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%02x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8*, i8*)* @fsp_attr_show_getreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_attr_show_getreg(%struct.psmouse* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fsp_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  %10 = load %struct.fsp_data*, %struct.fsp_data** %9, align 8
  store %struct.fsp_data* %10, %struct.fsp_data** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.fsp_data*, %struct.fsp_data** %7, align 8
  %13 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fsp_data*, %struct.fsp_data** %7, align 8
  %16 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  ret i32 %18
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

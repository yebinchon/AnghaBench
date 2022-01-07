; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_interface.c_pnp_show_current_ids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_interface.c_pnp_show_current_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pnp_dev = type { %struct.pnp_id* }
%struct.pnp_id = type { i8*, %struct.pnp_id* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pnp_show_current_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_show_current_ids(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pnp_dev*, align 8
  %9 = alloca %struct.pnp_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.pnp_dev* @to_pnp_dev(%struct.device* %11)
  store %struct.pnp_dev* %12, %struct.pnp_dev** %8, align 8
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %14 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 0
  %15 = load %struct.pnp_id*, %struct.pnp_id** %14, align 8
  store %struct.pnp_id* %15, %struct.pnp_id** %9, align 8
  br label %16

16:                                               ; preds = %19, %3
  %17 = load %struct.pnp_id*, %struct.pnp_id** %9, align 8
  %18 = icmp ne %struct.pnp_id* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.pnp_id*, %struct.pnp_id** %9, align 8
  %22 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %7, align 8
  %28 = load %struct.pnp_id*, %struct.pnp_id** %9, align 8
  %29 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %28, i32 0, i32 1
  %30 = load %struct.pnp_id*, %struct.pnp_id** %29, align 8
  store %struct.pnp_id* %30, %struct.pnp_id** %9, align 8
  br label %16

31:                                               ; preds = %16
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  ret i32 %37
}

declare dso_local %struct.pnp_dev* @to_pnp_dev(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_set_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_set_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { i32 }
%struct.enclosure_component = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)* @ses_set_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_set_active(%struct.enclosure_device* %0, %struct.enclosure_component* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.enclosure_device*, align 8
  %6 = alloca %struct.enclosure_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  store %struct.enclosure_device* %0, %struct.enclosure_device** %5, align 8
  store %struct.enclosure_component* %1, %struct.enclosure_component** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = bitcast [4 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %9, i8 0, i64 4, i1 false)
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %18 [
    i32 129, label %11
    i32 128, label %14
  ]

11:                                               ; preds = %3
  %12 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %13 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  br label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  store i8 -128, i8* %15, align 1
  %16 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %17 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %14, %11
  %22 = load %struct.enclosure_device*, %struct.enclosure_device** %5, align 8
  %23 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %25 = call i32 @ses_set_page2_descriptor(%struct.enclosure_device* %22, %struct.enclosure_component* %23, i8* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ses_set_page2_descriptor(%struct.enclosure_device*, %struct.enclosure_component*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_process_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_process_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_component = type { %struct.ses_component* }
%struct.ses_component = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enclosure_component*, i8*)* @ses_process_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_process_descriptor(%struct.enclosure_component* %0, i8* %1) #0 {
  %3 = alloca %struct.enclosure_component*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ses_component*, align 8
  %10 = alloca i8*, align 8
  store %struct.enclosure_component* %0, %struct.enclosure_component** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 16
  store i32 %15, i32* %5, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 128
  store i32 %20, i32* %6, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 15
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %26 = load %struct.enclosure_component*, %struct.enclosure_component** %3, align 8
  %27 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %26, i32 0, i32 0
  %28 = load %struct.ses_component*, %struct.ses_component** %27, align 8
  store %struct.ses_component* %28, %struct.ses_component** %9, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.ses_component*, %struct.ses_component** %9, align 8
  %31 = getelementptr inbounds %struct.ses_component, %struct.ses_component* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %98

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %93 [
    i32 128, label %37
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 8
  store i8* %42, i8** %10, align 8
  br label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %45, i8** %10, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 12
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 56
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 13
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 48
  %57 = or i32 %51, %56
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 14
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 40
  %63 = or i32 %57, %62
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 15
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 32
  %69 = or i32 %63, %68
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 16
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 24
  %75 = or i32 %69, %74
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 17
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 16
  %81 = or i32 %75, %80
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 18
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 8
  %87 = or i32 %81, %86
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 19
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %87, %91
  store i32 %92, i32* %8, align 4
  br label %94

93:                                               ; preds = %35
  br label %94

94:                                               ; preds = %93, %46
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.ses_component*, %struct.ses_component** %9, align 8
  %97 = getelementptr inbounds %struct.ses_component, %struct.ses_component* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %94, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

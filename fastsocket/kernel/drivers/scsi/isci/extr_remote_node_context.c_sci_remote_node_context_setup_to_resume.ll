; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_context.c_sci_remote_node_context_setup_to_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_context.c_sci_remote_node_context_setup_to_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_context = type { i64, i8*, i32* }

@RNC_DEST_FINAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sci_remote_node_context*, i32*, i8*, i32)* @sci_remote_node_context_setup_to_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_remote_node_context_setup_to_resume(%struct.sci_remote_node_context* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sci_remote_node_context*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.sci_remote_node_context* %0, %struct.sci_remote_node_context** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %5, align 8
  %10 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RNC_DEST_FINAL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %5, align 8
  %18 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %5, align 8
  %24 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %5, align 8
  %27 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %21, %14
  br label %29

29:                                               ; preds = %28, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

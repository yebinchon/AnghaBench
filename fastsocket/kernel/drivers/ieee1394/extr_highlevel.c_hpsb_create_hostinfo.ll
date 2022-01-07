; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_highlevel.c_hpsb_create_hostinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_highlevel.c_hpsb_create_hostinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_highlevel = type { i32, i32, i32 }
%struct.hpsb_host = type { i32 }
%struct.hl_host_info = type { i64, i32, %struct.hpsb_host*, %struct.hl_host_info* }

@.str = private unnamed_addr constant [60 x i8] c"%s called hpsb_create_hostinfo when hostinfo already exists\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hpsb_create_hostinfo(%struct.hpsb_highlevel* %0, %struct.hpsb_host* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hpsb_highlevel*, align 8
  %6 = alloca %struct.hpsb_host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hl_host_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.hpsb_highlevel* %0, %struct.hpsb_highlevel** %5, align 8
  store %struct.hpsb_host* %1, %struct.hpsb_host** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %5, align 8
  %12 = load %struct.hpsb_host*, %struct.hpsb_host** %6, align 8
  %13 = call %struct.hl_host_info* @hl_get_hostinfo(%struct.hpsb_highlevel* %11, %struct.hpsb_host* %12)
  store %struct.hl_host_info* %13, %struct.hl_host_info** %8, align 8
  %14 = load %struct.hl_host_info*, %struct.hl_host_info** %8, align 8
  %15 = icmp ne %struct.hl_host_info* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %5, align 8
  %18 = getelementptr inbounds %struct.hpsb_highlevel, %struct.hpsb_highlevel* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @HPSB_ERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i8* null, i8** %4, align 8
  br label %63

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = add i64 32, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.hl_host_info* @kzalloc(i32 %24, i32 %25)
  store %struct.hl_host_info* %26, %struct.hl_host_info** %8, align 8
  %27 = load %struct.hl_host_info*, %struct.hl_host_info** %8, align 8
  %28 = icmp ne %struct.hl_host_info* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i8* null, i8** %4, align 8
  br label %63

30:                                               ; preds = %21
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.hl_host_info*, %struct.hl_host_info** %8, align 8
  %35 = getelementptr inbounds %struct.hl_host_info, %struct.hl_host_info* %34, i64 1
  %36 = load %struct.hl_host_info*, %struct.hl_host_info** %8, align 8
  %37 = getelementptr inbounds %struct.hl_host_info, %struct.hl_host_info* %36, i32 0, i32 3
  store %struct.hl_host_info* %35, %struct.hl_host_info** %37, align 8
  %38 = bitcast %struct.hl_host_info* %35 to i8*
  store i8* %38, i8** %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.hl_host_info*, %struct.hl_host_info** %8, align 8
  %41 = getelementptr inbounds %struct.hl_host_info, %struct.hl_host_info* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %45

42:                                               ; preds = %30
  %43 = load %struct.hl_host_info*, %struct.hl_host_info** %8, align 8
  %44 = bitcast %struct.hl_host_info* %43 to i8*
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.hpsb_host*, %struct.hpsb_host** %6, align 8
  %47 = load %struct.hl_host_info*, %struct.hl_host_info** %8, align 8
  %48 = getelementptr inbounds %struct.hl_host_info, %struct.hl_host_info* %47, i32 0, i32 2
  store %struct.hpsb_host* %46, %struct.hpsb_host** %48, align 8
  %49 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %5, align 8
  %50 = getelementptr inbounds %struct.hpsb_highlevel, %struct.hpsb_highlevel* %49, i32 0, i32 0
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @write_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.hl_host_info*, %struct.hl_host_info** %8, align 8
  %54 = getelementptr inbounds %struct.hl_host_info, %struct.hl_host_info* %53, i32 0, i32 1
  %55 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %5, align 8
  %56 = getelementptr inbounds %struct.hpsb_highlevel, %struct.hpsb_highlevel* %55, i32 0, i32 1
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  %58 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %5, align 8
  %59 = getelementptr inbounds %struct.hpsb_highlevel, %struct.hpsb_highlevel* %58, i32 0, i32 0
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @write_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i8*, i8** %9, align 8
  store i8* %62, i8** %4, align 8
  br label %63

63:                                               ; preds = %45, %29, %16
  %64 = load i8*, i8** %4, align 8
  ret i8* %64
}

declare dso_local %struct.hl_host_info* @hl_get_hostinfo(%struct.hpsb_highlevel*, %struct.hpsb_host*) #1

declare dso_local i32 @HPSB_ERR(i8*, i32) #1

declare dso_local %struct.hl_host_info* @kzalloc(i32, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

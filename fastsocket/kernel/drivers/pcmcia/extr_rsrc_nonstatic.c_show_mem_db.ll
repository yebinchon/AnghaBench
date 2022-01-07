; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_show_mem_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_show_mem_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pcmcia_socket = type { %struct.socket_data* }
%struct.socket_data = type { %struct.resource_map }
%struct.resource_map = type { i64, i64, %struct.resource_map* }

@rsrc_mutex = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"0x%08lx - 0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_mem_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_mem_db(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pcmcia_socket*, align 8
  %8 = alloca %struct.socket_data*, align 8
  %9 = alloca %struct.resource_map*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.pcmcia_socket* @dev_get_drvdata(%struct.device* %11)
  store %struct.pcmcia_socket* %12, %struct.pcmcia_socket** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = call i32 @mutex_lock(i32* @rsrc_mutex)
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 0
  %16 = load %struct.socket_data*, %struct.socket_data** %15, align 8
  store %struct.socket_data* %16, %struct.socket_data** %8, align 8
  %17 = load %struct.socket_data*, %struct.socket_data** %8, align 8
  %18 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %18, i32 0, i32 2
  %20 = load %struct.resource_map*, %struct.resource_map** %19, align 8
  store %struct.resource_map* %20, %struct.resource_map** %9, align 8
  br label %21

21:                                               ; preds = %57, %3
  %22 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %23 = load %struct.socket_data*, %struct.socket_data** %8, align 8
  %24 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %23, i32 0, i32 0
  %25 = icmp ne %struct.resource_map* %22, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sub nsw i32 %28, 10
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %57

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %42 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %45 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %48 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %46, %49
  %51 = sub i64 %50, 1
  %52 = call i64 @snprintf(i8* %36, i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %51)
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %32, %31
  %58 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %59 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %58, i32 0, i32 2
  %60 = load %struct.resource_map*, %struct.resource_map** %59, align 8
  store %struct.resource_map* %60, %struct.resource_map** %9, align 8
  br label %21

61:                                               ; preds = %21
  %62 = call i32 @mutex_unlock(i32* @rsrc_mutex)
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local %struct.pcmcia_socket* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

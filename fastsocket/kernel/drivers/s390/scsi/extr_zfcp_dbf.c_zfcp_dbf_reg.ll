; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_view = type { i32 }
%struct.debug_info = type { i32 }

@dbfsize = common dso_local global i32 0, align 4
@debug_hex_ascii_view = common dso_local global %struct.debug_view zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.debug_info* (i8*, i32, %struct.debug_view*, i32)* @zfcp_dbf_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.debug_info* @zfcp_dbf_reg(i8* %0, i32 %1, %struct.debug_view* %2, i32 %3) #0 {
  %5 = alloca %struct.debug_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.debug_view*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.debug_info*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.debug_view* %2, %struct.debug_view** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @dbfsize, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.debug_info* @debug_register(i8* %11, i32 %12, i32 %13, i32 %14)
  store %struct.debug_info* %15, %struct.debug_info** %10, align 8
  %16 = load %struct.debug_info*, %struct.debug_info** %10, align 8
  %17 = icmp ne %struct.debug_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.debug_info* null, %struct.debug_info** %5, align 8
  br label %29

19:                                               ; preds = %4
  %20 = load %struct.debug_info*, %struct.debug_info** %10, align 8
  %21 = call i32 @debug_register_view(%struct.debug_info* %20, %struct.debug_view* @debug_hex_ascii_view)
  %22 = load %struct.debug_info*, %struct.debug_info** %10, align 8
  %23 = load %struct.debug_view*, %struct.debug_view** %8, align 8
  %24 = call i32 @debug_register_view(%struct.debug_info* %22, %struct.debug_view* %23)
  %25 = load %struct.debug_info*, %struct.debug_info** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @debug_set_level(%struct.debug_info* %25, i32 %26)
  %28 = load %struct.debug_info*, %struct.debug_info** %10, align 8
  store %struct.debug_info* %28, %struct.debug_info** %5, align 8
  br label %29

29:                                               ; preds = %19, %18
  %30 = load %struct.debug_info*, %struct.debug_info** %5, align 8
  ret %struct.debug_info* %30
}

declare dso_local %struct.debug_info* @debug_register(i8*, i32, i32, i32) #1

declare dso_local i32 @debug_register_view(%struct.debug_info*, %struct.debug_view*) #1

declare dso_local i32 @debug_set_level(%struct.debug_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

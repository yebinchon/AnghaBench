; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_nubus.c_nubus_get_rsrc_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_nubus.c_nubus_get_rsrc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_dirent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nubus_get_rsrc_mem(i8* %0, %struct.nubus_dirent* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nubus_dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.nubus_dirent* %1, %struct.nubus_dirent** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  %10 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %11 = call i8* @nubus_dirptr(%struct.nubus_dirent* %10)
  store i8* %11, i8** %8, align 8
  br label %12

12:                                               ; preds = %15, %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %17 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nubus_get_rom(i8** %8, i32 1, i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %7, align 8
  store i8 %20, i8* %21, align 1
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %6, align 4
  br label %12

25:                                               ; preds = %12
  ret void
}

declare dso_local i8* @nubus_dirptr(%struct.nubus_dirent*) #1

declare dso_local i32 @nubus_get_rom(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

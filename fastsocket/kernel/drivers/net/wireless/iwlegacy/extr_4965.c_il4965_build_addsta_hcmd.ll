; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_build_addsta_hcmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_build_addsta_hcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_addsta_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.il4965_addsta_cmd = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_addsta_cmd*, i32*)* @il4965_build_addsta_hcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_build_addsta_hcmd(%struct.il_addsta_cmd* %0, i32* %1) #0 {
  %3 = alloca %struct.il_addsta_cmd*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.il4965_addsta_cmd*, align 8
  store %struct.il_addsta_cmd* %0, %struct.il_addsta_cmd** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.il4965_addsta_cmd*
  store %struct.il4965_addsta_cmd* %7, %struct.il4965_addsta_cmd** %5, align 8
  %8 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.il4965_addsta_cmd*, %struct.il4965_addsta_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.il4965_addsta_cmd, %struct.il4965_addsta_cmd* %11, i32 0, i32 11
  store i32 %10, i32* %12, align 4
  %13 = load %struct.il4965_addsta_cmd*, %struct.il4965_addsta_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.il4965_addsta_cmd, %struct.il4965_addsta_cmd* %13, i32 0, i32 10
  %15 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %15, i32 0, i32 8
  %17 = call i32 @memcpy(i32* %14, i32* %16, i32 4)
  %18 = load %struct.il4965_addsta_cmd*, %struct.il4965_addsta_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.il4965_addsta_cmd, %struct.il4965_addsta_cmd* %18, i32 0, i32 9
  %20 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %20, i32 0, i32 7
  %22 = call i32 @memcpy(i32* %19, i32* %21, i32 4)
  %23 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.il4965_addsta_cmd*, %struct.il4965_addsta_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.il4965_addsta_cmd, %struct.il4965_addsta_cmd* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.il4965_addsta_cmd*, %struct.il4965_addsta_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.il4965_addsta_cmd, %struct.il4965_addsta_cmd* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %3, align 8
  %34 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.il4965_addsta_cmd*, %struct.il4965_addsta_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.il4965_addsta_cmd, %struct.il4965_addsta_cmd* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.il4965_addsta_cmd*, %struct.il4965_addsta_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.il4965_addsta_cmd, %struct.il4965_addsta_cmd* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %3, align 8
  %44 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.il4965_addsta_cmd*, %struct.il4965_addsta_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.il4965_addsta_cmd, %struct.il4965_addsta_cmd* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.il4965_addsta_cmd*, %struct.il4965_addsta_cmd** %5, align 8
  %52 = getelementptr inbounds %struct.il4965_addsta_cmd, %struct.il4965_addsta_cmd* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %3, align 8
  %54 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.il4965_addsta_cmd*, %struct.il4965_addsta_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.il4965_addsta_cmd, %struct.il4965_addsta_cmd* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = call i8* @cpu_to_le16(i32 0)
  %59 = load %struct.il4965_addsta_cmd*, %struct.il4965_addsta_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.il4965_addsta_cmd, %struct.il4965_addsta_cmd* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = call i8* @cpu_to_le16(i32 0)
  %62 = load %struct.il4965_addsta_cmd*, %struct.il4965_addsta_cmd** %5, align 8
  %63 = getelementptr inbounds %struct.il4965_addsta_cmd, %struct.il4965_addsta_cmd* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  ret i32 56
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

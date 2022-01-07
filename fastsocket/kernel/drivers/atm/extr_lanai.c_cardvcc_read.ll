; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_lanai.c_cardvcc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_lanai.c_cardvcc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_vcc = type { i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"cardvcc_read: unbound vcc!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"VR vci=%04d 0x%02X = 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lanai_vcc*, i32)* @cardvcc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardvcc_read(%struct.lanai_vcc* %0, i32 %1) #0 {
  %3 = alloca %struct.lanai_vcc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lanai_vcc* %0, %struct.lanai_vcc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %7 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @APRINTK(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %13 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @readl(i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.lanai_vcc*, %struct.lanai_vcc** %3, align 8
  %20 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @RWDEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @APRINTK(i32, i8*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @RWDEBUG(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

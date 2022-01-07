; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_disconnect_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_disconnect_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cycx_device = type { i32 }

@X25_DISCONNECT_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cycx_device*, i8, i8)* @cycx_x25_disconnect_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cycx_x25_disconnect_response(%struct.cycx_device* %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca %struct.cycx_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [5 x i8], align 1
  store %struct.cycx_device* %0, %struct.cycx_device** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i32 0, i32 5)
  %10 = load i8, i8* %6, align 1
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  store i8 %10, i8* %12, align 1
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  store i8 16, i8* %13, align 1
  %14 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 4
  store i8 23, i8* %14, align 1
  %15 = load %struct.cycx_device*, %struct.cycx_device** %4, align 8
  %16 = load i32, i32* @X25_DISCONNECT_RESPONSE, align 4
  %17 = load i8, i8* %5, align 1
  %18 = bitcast [5 x i8]* %7 to i8**
  %19 = call i32 @x25_exec(%struct.cycx_device* %15, i32 %16, i8 signext %17, i8** %18, i32 5, i32* null, i32 0)
  ret i32 %19
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @x25_exec(%struct.cycx_device*, i32, i8 signext, i8**, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

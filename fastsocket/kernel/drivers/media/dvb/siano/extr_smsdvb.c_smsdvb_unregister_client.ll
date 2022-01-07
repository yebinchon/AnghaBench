; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsdvb.c_smsdvb_unregister_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsdvb.c_smsdvb_unregister_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_client_t = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsdvb_client_t*)* @smsdvb_unregister_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsdvb_unregister_client(%struct.smsdvb_client_t* %0) #0 {
  %2 = alloca %struct.smsdvb_client_t*, align 8
  store %struct.smsdvb_client_t* %0, %struct.smsdvb_client_t** %2, align 8
  %3 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %2, align 8
  %4 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %3, i32 0, i32 5
  %5 = call i32 @list_del(i32* %4)
  %6 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %2, align 8
  %7 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @smscore_unregister_client(i32 %8)
  %10 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %2, align 8
  %11 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %10, i32 0, i32 3
  %12 = call i32 @dvb_unregister_frontend(i32* %11)
  %13 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %2, align 8
  %14 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %13, i32 0, i32 2
  %15 = call i32 @dvb_dmxdev_release(i32* %14)
  %16 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %2, align 8
  %17 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %16, i32 0, i32 1
  %18 = call i32 @dvb_dmx_release(i32* %17)
  %19 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %2, align 8
  %20 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %19, i32 0, i32 0
  %21 = call i32 @dvb_unregister_adapter(i32* %20)
  %22 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %2, align 8
  %23 = call i32 @kfree(%struct.smsdvb_client_t* %22)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @smscore_unregister_client(i32) #1

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(i32*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.smsdvb_client_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
